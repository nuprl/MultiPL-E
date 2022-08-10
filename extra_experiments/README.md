
```
cd ../src
python3 prepare_prompts_yaml.py --lang humaneval_to_rkt-multiline.py \
  --target-dir ../extra_experiments/rkt_multiline \
  --doctests transform \
  --originals ../datasets/originals-with-cleaned-vocab-rkt
python3 prepare_prompts_yaml.py --lang humaneval_to_php-multiline.py --target-dir ../extra_experiments/php_multiline --doctests transform --originals ../datasets/originals-with-cleaned-vocab-php
