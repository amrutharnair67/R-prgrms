vector <- c(1, 2, 3, 4, 5, 6)
random_sample <- sample(vector, size = 3)  
print(random_sample)

random_uniform <- runif(n = 5, min = 0, max = 1)  
print(random_uniform)

# Set the seed for reproducibility
set.seed(123)

# Generate random numbers from a normal distribution
random_numbers <- rnorm(100, mean = 0, sd = 1)  # Generate 100 random numbers with mean 0 and standard deviation 1

# Count occurrences of each value
occurrences <- table(random_numbers)

# Display the results
print(occurrences)

random_vector <- sample(-50:50, 10, replace = TRUE)
print(random_vector)


set.seed(123)
prob_heads <- 0.7  
prob_tails <- 1 - prob_heads 

coin_outcomes <- c("Heads", "Tails") 
biased_coin_sample <- sample(coin_outcomes, 10, replace = TRUE, prob = c(prob_heads, prob_tails))

print(biased_coin_sample)



set.seed(123)
num_simulations <- 10000
dice_outcomes <- sample(1:6, num_simulations, replace = TRUE)
mean_value <- mean(dice_outcomes)
std_dev <- sd(dice_outcomes)
print(paste("Arithmetic Mean:", mean_value))
print(paste("Standard Deviation:", std_dev))

set.seed(123)
lottery_numbers <- sample(1:49, 6, replace = FALSE) 
superzahl <- sample(0:9, 1, replace = FALSE) 
print("Lottery Numbers (6 aus 49):")
print(lottery_numbers)
print(paste("Superzahl:", superzahl))

population <- c(1, 2, 3, 4, 5, 6)
sample_space <- combn(population, 3)
print(sample_space)



x <- rnorm(1000)


hist(x, freq = FALSE, xlim = c(-4, 4), ylim = c(0, 0.5), main = "Normal Distribution PDF")
curve(dnorm(x, mean = 0, sd = 1), add = TRUE, col = "blue", lwd = 2)


curve(pnorm(x, mean = 0, sd = 1), from = -4, to = 4, col = "red", lwd = 2, ylab = "Probability", main = "Normal Distribution CDF")



x <- rbinom(1000, size = 10, prob = 0.5)


hist(x, freq = FALSE, breaks = seq(-0.5, 10.5, by = 1), main = "Binomial Distribution PMF")
points(0:10, dbinom(0:10, size = 10, prob = 0.5), col = "blue", pch = 19)


plot(0:10, pbinom(0:10, size = 10, prob = 0.5), type = "s", col = "red", lwd = 2, ylim = c(0, 1), ylab = "Probability", main = "Binomial Distribution CDF")

x <- rpois(1000, lambda = 3)
hist(x, freq = FALSE, breaks = seq(-0.5, 15.5, by = 1), main = "Poisson Distribution PMF")
points(0:15, dpois(0:15, lambda = 3), col = "blue", pch = 19)
plot(0:15, ppois(0:15, lambda = 3), type = "s", col = "red", lwd = 2, ylim = c(0, 1), ylab = "Probability", main = "Poisson Distribution CDF")


prob_i <- pnorm(27.5, mean = 22, sd = sqrt(25)) - pnorm(16.2, mean = 22, sd = sqrt(25))
prob_i


prob_ii <- 1 - pnorm(29, mean = 22, sd = sqrt(25))
prob_ii


prob_iii <- pnorm(17, mean = 22, sd = sqrt(25))
prob_iii


prob_iv <- pnorm(15, mean = 22, sd = sqrt(25), lower.tail = TRUE) + pnorm(25, mean = 22, sd = sqrt(25), lower.tail = FALSE)
prob_iv

prob_i <- sum(dbinom(c(20, 25, 30), size = 60, prob = 0.5))
prob_i

prob_ii <- pbinom(19, size = 60, prob = 0.5)
prob_ii

prob_iii <- sum(dbinom(20:30, size = 60, prob = 0.5))
prob_iii


prob_i <- ppois(4, lambda = 7)
prob_i

prob_ii <- 1 - ppois(10, lambda = 7)
prob_ii
prob_iii <- ppois(16, lambda = 7, lower.tail = TRUE) - ppois(3, lambda = 7, lower.tail = TRUE)
prob_iii


# Simulate normal distribution values with mean 1.70 and standard deviation 0.1 for 1000 people
heights <- rnorm(1000, mean = 1.70, sd = 0.1)

# Plot the density of the simulated values
plot(density(heights), main = "Density Plot of Simulated Heights", xlab = "Height (m)", ylab = "Density")

# Generate 10000 values with the same mean and standard deviation
heights_new <- rnorm(10000, mean = 1.70, sd = 0.1)

# Overlay the density plot of the new values on top of the previous plot in red
lines(density(heights_new), col = "red")


prob_10_sixes <- dbinom(10, size = 100, prob = 1/6)
prob_10_sixes

prob_10_or_fewer_sixes <- pbinom(10, size = 100, prob = 1/6)
prob_10_or_fewer_sixes



simulations <- replicate(1000, sum(sample(1:6, size = 100, replace = TRUE) == 6))
emp_distribution <- table(simulations) / 1000
emp_distribution
simulations <- replicate(1000000, sum(sample(1:6, size = 100, replace = TRUE) == 6))
empirical_distribution <- table(simulations) / 1000000
empirical_distribution

# Set the seed
set.seed(1)

# Generate 10 unfair coin tosses with probability of success (heads) 0.3
coin_tosses <- rbinom(10, size = 1, prob = 0.3)

# Print the results
coin_tosses

set.seed(1)
toss_result <- rbinom(10, size = 1, prob = 0.3)
toss_result



set.seed(123)
heights <- rnorm(100, mean = 1.70, sd = 0.1)

# Calculate the probability of being smaller or equal to 1.90m
prob <- 1 - pnorm(1.90, mean = 1.70, sd = 0.1)

# Print the result
prob
# Calculate the probability of being taller or equal to 1.60m
prob2 <- pnorm(1.60, mean = 1.70, sd = 0.1, lower.tail = FALSE)

prob2
