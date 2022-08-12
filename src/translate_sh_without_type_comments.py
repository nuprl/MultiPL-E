import humaneval_to_sh

class Translator(humaneval_to_sh.Translator):
    def __init__(self):
        self.skip_annotations = True
