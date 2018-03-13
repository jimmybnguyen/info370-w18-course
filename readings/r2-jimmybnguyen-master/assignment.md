# Foundational Stats

## Overview
The purpose of this assignment is to ensure that you have a foundational understanding of probability and statistics such that you can appropriately interpret and perform analyses. The [open-intro-stats](open-intro-stats.pdf) textbook included in this repository is the **strongly suggested** resource for answering questions (i.e., rather than wikipedia / misc. google searches.). You are welcome to use other resources or prior knowledge, but we expect your answers to be consistent (and as **thorough**) as captured in the book. Obviously, we **do not expect** you to read the entire book, but instead to **use it as a reference** to guide you through answering the following questions.

## Probability Basics (Ch. 2)
For each of the following questions, compute the answer. Then, using the appropriate vocabulary, describe how you computed you answer in ~1 - 2 sentences

1. What is the probability of rolling an odd number _or_ a 4 if you roll a (fair) six-sided die? _(7 points)_
> There are three outcomes of getting an odd number, and one outcome of rolling a 4. Therefore, according to the disjoint theory since rolling an odd number or a four cannot happen at the same time, the probability of rolling these numbers is (3/6) + (1/6) = (2/3). 

2. What is the probability of rolling an odd number _or_ a 4 in **two rolls** of a (fair) six-sided die? May require outside reference. _(7 points)_
> The probability of *not* rolling an odd number or a 4 for the first die is 2/6, and 2/6 for the second die. By the product rule, the probability, of not rolling these numbers is (2/6) * (2/6) = (4/36). Thus, the probability of rolling an odd number or a 4 in two rolls is 1 minus the probability of *not* rolling these numbers: 1 - (4/36) = (8/9)

3. Imagine a bowl with three balls in it: one red, one blue, and one yellow. What is the probability of removing a red ball from the  bowl (without replacing it), _and then_ removing a yellow ball? _(7 points)_
> The probability of removing a red ball first from the bowl is (1/3). Then, the probability of removing a yellow ball from the bowl is (1/2). Therefore, the probability of removing a red ball and then a yellow ball is (1/3) * (1/2) = (1/6)

4. Example 2.54 (p.98) walks through the use of **Bayes' Theorem** to answer the question, _what is the probability that a woman has breast cancer given her positive mammogram results_? In addition to the false positive/negative test rate, what other information is necessary to compute this probability? _(7 points)_
> There are many factors that play a role in someone developing break cancer. For example, looking at family history of break cancer may be beneficial because a women's risk of breast cancer may be higher if past family members had it. [According to the CDC](https://www.cdc.gov/cancer/breast/basic_info/risk_factors.htm), other factors may include alcohol consumption, lack of physical activity, and genetic mutations. 

## Probability Distributions (Ch. 3)
1. What are the **parameters** of the normal distribution, and how does changing each one affect the shape of the distribution? _(7 points)_
> The parameters of the normal distribution are the mean and standard deviation. Changing the mean will shift the bell curve to the left or the right, and changing the standard deviation will stretch or constrict the curve. The bell curve shifts when the mean changes because the top of the bell curve represents the most probable observation in the dataset. Lowering the standard deviation constricts the bell curve because overall the data is closer together, so the curve does not need to be as wide to cover the range in observations. Likewise, increasing the standard deviation stretches the bell curve because there is more variance in the dataset, so the curve needs to cover a larger amount. 

2. If the distribution of a variable is normal (or nearly normal) what does that empower us to do? _(7 points)_
> If the distribution of a variable is normal or nearly normal, it allows us to see which observations are more unusual than others. This is done with Z-scores, which is the number of standard deviations above or below the mean. If we are looking at SAT scores with a normal distribution, a score with a high Z-score indicates that the student did much better than the average. 

3. Imagine two instructors that teach the same course, both of whom have a normal distribution for their students' grades. In the first instructor's course, the mean student grade is 93%, with a standard deviation of 8%. In the second instructor's course, the mean student grade is 90%, with a standard deviation of 5%. For the students below, What **percentile** of performance did each student achieve (and was, therefore, the "better" student)? _(7 points)_

    - Student 1: received a 96% in Instructor 1's class
    - Student 2: received a 93% in Instructor 2's class
> Student 1: Calculating the difference between student's score and the mean: 96% - 93% = 3%. Z-score is calculated by the difference divided by the standard deviation: 3/8 = 0.375. Rounding the Z-score to 0.38 and looking at the normal probability table, Student 1 is at the 64.43th percentile. 

> Student 2: Calculating the difference between the student's score and the mean: 93% - 90% = 3%. Z-score calculation: 3/5 = 0\0.6. Looking at the normal probability table, student 2 is at the 72.57th percentile. **As such, student 2 performed better than student 1**.

4. Imagine you have a job registering people to vote, and you need to register one more person before the end of the day. Based on your work thus far, you know that each person you approach has a **4% probability** of registering to vote with you. What is the **expected number of people** you need to approach before you're likely to get someone to register? Please also include the **standard deviation** around your estimate, and describe how you arrive at your answer, making sure to reference the **type of distribution** this event follows. _(7 points)_
> This event follows a geometric distribution because we are looking for the waiting time until a success for independent and identically distributed Bernulli variable, which is a random variable that has exactly two outcomes. The two outcomes here are registration to vote and not registating to vote. The mean in a geometric distribution is the expected value we need to approach before we are likely to get someone to register. The mean is calculated by 1/p, with p being the probability of success. μ = (1/p) = (1/0.04) = 25 people.

> The standard deviation is calculated by *sqrt((1-p)/p^2)* = sqrt((1-0.04)/0.04^2) = 24.49

5. Continuing from the example above, if I approached 100 people to register to vote, what is the probability that **exactly 4** would register?  What is the **expected number** of people to register? _hint: even though this is the same situation, the questions being asked may be of different distributions_. _(7 points)_
> The distribution here is a binomial distribution because a binomial distribution describes the probability of having exactly *k* successes in *n* independent Bernoulli trials with a certain probability of success. The formula to calculate this scenario is  (n!/k!(n-k)!) * (p^k) * (1-p)^(n-k), with n =100 (number of trials), p = 0.04 (probability of success), and k = 4 (number of successes). Therefore, the probability of success for this scenario is 0.199.

## Foundations for Inference (Ch. 4)
1. Define the terms **standard error** and **standard deviation**. Then, using a hypothetical example _not in the textbook_, describe a situation in which you could compute the two, and highlight how they are different (hint: your answer should include a description of how to generate a **sampling distribution**).  _(7 points)_
> A **standard deviation** is a quantifiable amount of variation of a set of data values. A low standard deviation means that data points tend to be close the mean, while a high standard deviation tells us that data points tend to spread out over a wider range. A **standard error** is a standard deviation associated with an estimate. It tells us how far the sample mean is likely to be from the population mean. 

> Here's a hypothetical example: we have a data set of 100,000 max level players in a MMORPG. The data set contains variables such as their average daily play time, class, strength, dexterity, intelligence, and total gold earned. Let's say we are interested in their average daily play time. We can take multiple random sample of 1000 players from this data set 100 times to build a sampling distribution for the sample mean. Let's assume the true population mean is 4.25 hours.

> The sample mean will have variability around the true population mean, which can be quantified using the standard deviation of the distribution of sample means. This tells us how far the estimate is away from the true population mean, and the typical error of the point estimate called the standard error. This means that the standard error is equal to the standard deviation of the sample mean. 

2. Why is the number 1.96 used for calculating confidence intervals? _(7 points)_
> Under the normal model, to get a more accurate estimate that 95% of the time our observations are within two standard deviations of the mean, 1.96 is used instead of 2. The z-value associated with a 95% confidence interval is 1.96, meaning that there are 1.96 standard deviations from the mean to a data point. The z-score takes into account the score, mean, and standard deviation. 

3. Given the statement, "the mean height of a sample of students was 140cm, with a confidence interval of 130 - 150 cm", interpret the **meaning of the confidence interval**. _(7 points)_
> A point estimate, in this case 140cm, is rarely perfect because there is usually there are errors in the estimate. A confidence interval gives a plausible range of values. The confidence interval tells us that the true population mean lies somewhere between 130cm and 150cm. 

4. Imagine you want to evaluate the claim, _the average income for Informatics graduates is $40,000_. If a sample of 200 Informatics graduates returns a mean of $42,000 (sd = $10,000), can we _reject the null hypothesis_ that the average income is not $40,000? Assume you're using confidence intervals as a mechanism for evaluating your hypothesis. _(8 points)_
> The standard error is $10,000. To calculate a 95% confidence interval, we do *sample mean +/- (z-score) * (standard error).* As such, *$42,000 +/- (1.96) * ($10,000)* = **$22,400 - $61,600**. Since a mean of $40,000 falls within this range of plausible values from the confidence interval, **we fail to reject** the null hypothesis that the average income for Informatics graduate is not $40,000 since there is a possiblity that it can be. 

## Statistical Inference (Ch. 5)

1. Define the **t-distribution**, then describe how it is different from the normal distribution, and why it would be used for analysis.  _(8 points)_
> The tails in a t-distribution are thicker than the normal model's, meaning observations are more likely to fall beyond two standard deviation from the mean than under a normal distribution. A t-distribution is great for small sample sizes because while the standard error estimation will be less accurate with a small data set, the thicker tails is the correction needed to solve the problem of a poorly estimated standard error. 

>A T-distribution have degrees of freedom, which describes the shape of the bell-shaped t-distribution. With a higher degree of freedom, the bell-shape looks very close to a normal distribution. In other ways, a higher degree of freedom means the model closely resembles the standard normal model. 