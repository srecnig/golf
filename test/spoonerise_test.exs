defmodule SpooneriseTest do
  use ExUnit.Case

	test "spoonerise_golfed should work" do
		assert ["master", "plan"] == Spoonerise.spoonerise_golfed("plaster", "man")
		assert ["crushing", "blow"] == Spoonerise.spoonerise_golfed("blushing", "crow")
		assert ["mitigating", "lore"] == Spoonerise.spoonerise_golfed("litigating", "more")
		assert ["wrong", "strangler"] == Spoonerise.spoonerise_golfed("strong", "wrangler")
		assert ["ghef", "di"] == Spoonerise.spoonerise_golfed("def", "ghi")
	end
end
