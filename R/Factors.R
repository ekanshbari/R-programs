########################Factors In R############################
################################################################

dice_outcome <- c(2,3,4,5,1,6,2,3,4,5)
dice_outcome
factor_dice<- factor(dice_outcome)
factor_dice
blood <- c("A", "B", "O", "AB", "O", "A", "B")
blood_cate <- factor(blood)
blood_cate
str(blood_cate)
blood_category <- factor(blood, levels=c("O", "A", "B", "AB"))
str(blood_category)
levels(blood_category)= c("Group_o", "Group_A", "Group_B", "Group_AB")
blood_category
Grades <- c("A", "B+", "B", "C", "C-","O", "A+", "A", "B+", "B", "C", "C-")
factor_grades<- factor(Grades, ordered= TRUE, levels=c("O", "A","A+", "B+", "B", "C", "C-"))
factor_grade
factor_grade[3]<factor_grade[2]
factor_grade <- factor(factor_grades, ordered=TRUE,levels=rev(levels(factor_grades)))
