'''
pass_at_k method from Chen et al.
Written by the OpenAI team behind Codex, 
copied directly from the paper 
'''
import numpy as np

def pass_at_k(n, c, k):
    '''
    :param n: total number of samples
    :param c: number of correct samples
    :param k: k in pass@$k$
    '''
    if n - c < k: return 1.0
    return 1.0 - np.prod(1.0 - k /
        np.arange(n - c + 1, n + 1))