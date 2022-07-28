"""It is the last week of the semester and the teacher has to give the grades
    to students. The teacher has been making her own algorithm for grading.
    The only problem is, she has lost the code she used for grading.
    She has given you a list of GPAs for some students and you have to write 
    a function that can output a list of letter grades using the following table:
             GPA       |    Letter grade
              4.0                A+
            > 3.7                A 
            > 3.3                A- 
            > 3.0                B+
            > 2.7                B 
            > 2.3                B-
            > 2.0                C+
            > 1.7                C
            > 1.3                C-
            > 1.0                D+ 
            > 0.7                D 
            > 0.0                D-
              0.0                E
    

    Example:
    grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
    """
function numerical_letter_grade(grades::Vector{Float64})::Vector{String} 
    letter_grade = []
    for grade in grades
        if grade >= 4.0
            push!(letter_grade, "A+")
        elseif grade >= 3.7
            push!(letter_grade, "A")
        elseif grade >= 3.3
            push!(letter_grade, "A-")
        elseif grade >= 3.0
            push!(letter_grade, "B+")
        elseif grade >= 2.7
            push!(letter_grade, "B")
        elseif grade >= 2.3
            push!(letter_grade, "B-")
        elseif grade >= 2.0
            push!(letter_grade, "C+")
        elseif grade >= 1.7
            push!(letter_grade, "C")
        elseif grade >= 1.3
            push!(letter_grade, "C-")
        elseif grade >= 1.0
            push!(letter_grade, "D+")
        elseif grade >= 0.7
            push!(letter_grade, "D")
        elseif grade >= 0.0
            push!(letter_grade, "D-")
        else
            push!(letter_grade, "E")
        end
    end
    return letter_grade
end

using Test

@testset begin

candidate = numerical_letter_grade;
	@test(candidate([4.0, 3, 1.7, 2, 3.5]) == ["A+", "B", "C-", "C", "A-"])
	@test(candidate([1.2]) == ["D+"])
	@test(candidate([0.5]) == ["D-"])
	@test(candidate([0.0]) == ["E"])
	@test(candidate([1.0, 0.3, 1.5, 2.8, 3.3]) == ["D", "D-", "C-", "B", "B+"])
	@test(candidate([0.0, 0.7]) == ["E", "D-"])
end
