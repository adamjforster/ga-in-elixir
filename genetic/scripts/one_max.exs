genotype = fn -> for _ <- 1..1_000, do: Enum.random(0..1) end
calculate_fitness = fn chromosome -> Enum.sum(chromosome) end
max_fitness = 1_000

solution = Genetic.run(calculate_fitness, genotype, max_fitness)

IO.write("\n")
IO.inspect(solution)
