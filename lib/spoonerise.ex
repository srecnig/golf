defmodule Spoonerise do
	# http://codegolf.stackexchange.com/questions/69385/spoonerise-words

	def spoonerise first, second do
		split_on_vowel = fn word -> String.split_at(word, hd( Regex.run( ~r/[aeiou]/, word, return: :index ) ) |> elem(0) ) end
		first_splitted = split_on_vowel.(first)
		second_splitted = split_on_vowel.(second)
		[elem(second_splitted,0) <> elem(first_splitted,1), elem(first_splitted,0) <> elem(second_splitted,1)]
	end

	def spoonerise_golfed a, b do
		s=fn w->String.split_at(w,elem(hd(Regex.run(~r/[aeiou]/,w,return: :index)),0))end
		[elem(s.(b),0)<>elem(s.(a),1),elem(s.(a),0)<>elem(s.(b),1)]
	end
end
