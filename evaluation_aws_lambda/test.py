import requests, json, os

FUNCTION_URL=os.environ["FUNC_URL"]
ENDPOINT = f"{FUNCTION_URL}/evaluate"

payload = {
  "language": "coq",
  "prompt": """(* Add returns the sum of two natural numbers. *)
Require Import Coq.Arith.Arith.

Definition Add (a b : nat) : nat :=
""",
  "completions": [
    # 正解
    "  a + b.\n",
    # 誤答（乗算）
    "  a * b.\n",
    # 誤答（減算：Coq標準の minus。例によって結果が合わず証明失敗）
    "  a - b.\n"
  ],
  "tests": """
Example test_add1 : Add 2 3 = 5.
Proof. reflexivity. Qed.

Example test_add2 : Add 0 0 = 0.
Proof. reflexivity. Qed.

Example test_add3 : Add 5 7 = 12.
Proof. reflexivity. Qed.
"""
}

resp = requests.post(
    ENDPOINT,
    headers={"Content-Type": "application/json"},
    data=json.dumps(payload),
    timeout=30
)

print("Status:", resp.status_code)
try:
    print(json.dumps(resp.json(), indent=2, ensure_ascii=False))
except Exception:
    print(resp.text)