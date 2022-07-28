"""
    You are given a positive integer n. You have to create an integer array a of length n.
        For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
        Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
    and a[i] + a[j] + a[k] is a multiple of 3.

    Example :
        Input: n = 5
        Output: 1
        Explanation: 
        a = [1, 3, 7, 13, 21]
        The only valid triple is (1, 7, 13).
    """
function get_max_triples(n::Int64)::Int64 
    a = zeros(Int64, n)
    for i in 1:n
        a[i] = i * i - i + 1
    end
    count = 0
    for i in 1:n-2
        for j in i+1:n-1
            for k in j+1:n
                if (a[i] + a[j] + a[k]) % 3 == 0
                    count += 1
                end
            end
        end
    end
    return count
end
@time get_max_triples(5)
@time get_max_triples(10)
@time get_max_triples(15)
@time get_max_triples(20)
@time get_max_triples(25)
@time get_max_triples(30)
@time get_max_triples(35)
@time get_max_triples(40)
@time get_max_triples(45)
@time get_max_triples(50)
@time get_max_triples(55)
@time get_max_triples(60)
@time get_max_triples(65)
@time get_max_triples(70)
@time get_max_triples(75)
@time get_max_triples(80)
@time get_max_triples(85)
@time get_max_triples(90)
@time get_max_triples(95)
@time get_max_triples(100)
@time get_max_triples(105)
@time get_max_triples(110)
@time get_max_triples(115)
@time get_max_triples(120)
@time get_max_triples(125)
@time get_max_triples(130)
@time get_max_triples(135)
@time get_max_triples(140)
@time get_max_triples(145)
@time get_max_triples(150)
@time get_max_triples(155)
@time get_max_triples

using Test

@testset begin

candidate = get_max_triples;
	@test(candidate(5) == 1)
	@test(candidate(6) == 4)
	@test(candidate(10) == 36)
	@test(candidate(100) == 53361)
end
