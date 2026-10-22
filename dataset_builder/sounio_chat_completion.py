"""Assemble Sounio chat samples without changing a generated function body.

The completion dataset supplies an immutable prelude and opening declaration;
tests supply its final closing brace. A chat model may repeat the entire prefix
or just that exact declaration. Both are unambiguous representations of the
same generated suffix. Other representations are left untouched, not repaired.
"""


def assemble_sounio_chat(prompt, completion, stop_tokens):
    text = completion
    if text.startswith('```'):
        lines = text.splitlines(keepends=True)
        if len(lines) < 2 or lines[-1].strip() != '```':
            return None
        text = ''.join(lines[1:-1])
    if text.startswith(prompt):
        suffix = text[len(prompt):]
    else:
        # Generated prompts end at the opening declaration of the entry point.
        # Matching the complete declaration prevents accepting renamed/retyped
        # functions and accidentally interpreting helper code as an answer.
        declaration = prompt[prompt.rfind('\nfn ') + 1:] if '\nfn ' in prompt else prompt
        if not declaration.startswith('fn ') or not declaration.endswith('{\n'):
            return None
        if not text.startswith(declaration):
            return None
        suffix = text[len(declaration):]
    end = len(suffix)
    for stop in stop_tokens:
        if stop and (position := suffix.find(stop)) != -1:
            end = min(end, position)
    return prompt + suffix[:end]
