require 'rubygems'
require 'gosu'
require './circle'

module ZOrder
	BACKGROUND, MIDDLE, TOP = *0..2
end

class DemoWindow < Gosu::Window
	def initialize
		super(640, 400, false)
		self.caption = "3.3C Drawing shapes using Gosu"
	end

	def draw
		draw_quad(0, 0, 0xff_ffffff, 640, 0, 0xff_ffffff, 0, 400, 0xff_ffffff, 640, 400, 0xff_ffffff, ZOrder::BACKGROUND)

		sun = Gosu::Image.new(Circle.new(45))
		sun.draw(40, 20, ZOrder::TOP, 1.0, 1.0, 0xff_fff000)

		ground = Gosu::Image.new(Circle.new(460))
		ground.draw(-50, 300, ZOrder::TOP, 1, 0.5, 0xff_CCFFCC)

		Gosu.draw_rect(220, 320, 100, -50, Gosu::Color::RED, ZOrder::TOP, mode = :default)
		Gosu.draw_rect(180, 320, 180, -50, Gosu::Color::RED, ZOrder::TOP, mode = :default)

		draw_quad(290, 240, Gosu::Color::RED, 250, 240, Gosu::Color::RED, 220, 270, Gosu::Color::RED, 320, 270, Gosu::Color::RED, ZOrder::TOP)
		draw_quad(285, 245, 0xff_000000, 255, 245, 0xff_000000, 225, 270, 0xff_000000, 315, 270, 0xff_000000, ZOrder::TOP)

		img = Gosu::Image.new(Circle.new(20))
		img.draw(200, 300, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)

		img = Gosu::Image.new(Circle.new(20))
		img.draw(300, 300, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)

		Gosu.draw_rect(500, 320, 30, -200, 0xff_994C00, ZOrder::TOP, mode = :default)
		tree = Gosu::Image.new(Circle.new(70))
		tree.draw(440, 50, ZOrder::TOP, 1.0, 1.3, 0xff_4C9900)
	end
end

DemoWindow.new.show