# Interest-Rate-Parity-IRP-Analysis
This repo explains IRP in simple terms and includes R code to generate a visualization of how it holds (or doesn't) for the USD/INR currency pair.


What is Interest Rate Parity? (Simple Breakdown)
The Basics
Imagine you can borrow money cheaply in the US (low interest) and invest it in India (high interest). Sounds like free money? Not quite – the Indian Rupee (INR) would weaken against the USD over time, wiping out the gain. That's IRP in action.

Spot Rate (S): Today's exchange rate (e.g., 1 USD = 87.83 INR).
Forward Rate (F): Locked-in rate for the future (e.g., 1 year ahead: 1 USD = 88.90 INR).
Interest Rates: US (i_USD = 4.10%), India (i_INR = 5.50%).

IRP formula (covered version):
$$\frac{F - S}{S} \approx i_{INR} - i_{USD}$$

Left: Forward premium (~1.1% here – INR depreciates).
Right: Rate gap (5.50% - 4.10% = 1.40%, or precisely ~1.34%).


Covered vs. Uncovered

Covered: Uses forwards to hedge risk (what we analyze here).
Uncovered: Relies on expected future spots (riskier).

Markets usually stick to covered IRP – no easy arbitrage!


--Author 
Anshu Kumar

