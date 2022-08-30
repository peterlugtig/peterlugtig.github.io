# explaining Bessels Correction
# OR - why we divide by n-1 when computing a sample variance, or sd
# Peter Lugtig
# 9 september 2019
# adapted from http://lindeloev.net/misc/unbiased_sd.r

############################################

# Simulating different ways to correct for bias in estimates of sd.

var.real = 10  # correct standard deviation
n.samples = 10000  # number of samples to collect for each sample size
sizes = c(2,10,50,100,500,1000,5000)  # sample sizes to evaluate on
n.sizes = length(sizes)

plotResult = function(constant) {
  # Simulating data
  set.seed(42)
  i = 1
  estimates = rep(NA, n.samples*n.sizes)
  for(size in sizes) {
    for(sample in 1:n.samples) {
      # Draw sample from population
      x = rnorm(size, 0, sqrt(var.real))
      # Calculate population SD given this sample
      estimates[i] = (sum((x - mean(x))^2) / (length(x) - constant))
      i = i + 1
    }
  }
  
 # Plot individual data points
  title = paste('constant=', round(constant, 3), ', bias=', round(mean(estimates) - var.real, 3))
  plot(estimates, main=title, ylim=c(0, 2*var.real))
  
  # Plot estimates for each sample size
  abline(h=var.real, col='red', lwd=3)  # real sd
  for(i in 1:n.sizes) {
    abline(v=i*n.samples, col='grey')  # vertical lines
    start = (i-1)*n.samples
    end = i*n.samples
    var.sim = mean(estimates[start:end])
    segments(start, var.sim, end, var.sim, col='blue', lwd=3, lend='butt')  # estimated sd
  }
}

# Do simulations using different constants
#
plotResult(0)  # no correction, just sample sd (heavily biased)
plotResult(sqrt(1))  # Bessel's correction (somewhat biased)
plotResult(1.5)  # The "rule of thumb" unbiased correction

# you can try other numbers
# or if you really like this, you could replace " rnorm"  in the function wih different 
# functions (e.g. poisson) to explore that n-1 doesn't always give you the lowest bias.
