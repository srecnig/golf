defmodule Powerball do
	# http://codegolf.stackexchange.com/questions/69208/choose-the-powerball-numbers

	# we have to do reduce the list of lotto numbers to a string, because when just outputting a list in
	# elixir, it will interpret the integers as characters

	def powerball_1 do
		Enum.take_random(1..69, 5) ++ [Enum.random(1..26)] |> Enum.reduce(fn(x, acc) -> "#{acc} #{x}" end)
	end

	def powerball_1_golfed do
		Enum.reduce Enum.take_random(1..69,5)++[Enum.random(1..26)],fn(x,a)->"#{a} #{x}"end
	end
end