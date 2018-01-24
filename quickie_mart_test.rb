require "minitest/autorun"
require_relative "quickie_mart.rb"

class TestQuickieMart < Minitest::Test 

	def test_assert_one_equals_one
		assert_equal(1,1)
	end

	def test_assert_newspaper_returns_wsj
		assert_equal("WSJ", item_name("newspaper"))
	end

    def test_assert_gum_returns_bubble_yum
		assert_equal("bubble yum", item_name("gum"))
	end

    def test_assert_soda_returns_coke
		assert_equal("coke", item_name("soda"))
	end

    def test_assert_lotto_returns_powerball
		assert_equal("powerball", item_name("lotto"))
	end

    def test_assert_candy_returns_skittles
		assert_equal("skittles", item_name("candy"))
 	end

 	def test_assert_chips_returns_doritos
		assert_equal("doritos", item_name("chips"))
	end
end