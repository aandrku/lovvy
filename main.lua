function love.load()
	love.window.setMode(0, 0, { fullscreen = true })
	love.graphics.setBackgroundColor(0.2, 0.6, 0.9)
	x, y, w, h = 20, 20, 60, 60
	dx, dy = 1, 1
end

function love.update()
	width, height = love.graphics.getDimensions()

	if x < 0 or x + 60 > width then
		dx = -dx
	end

	if y < 0 or y + 60 > height then
		dy = -dy
	end

	x = x + dx
	y = y + dy
end

function love.draw()
	love.graphics.rectangle("fill", x, y, w, h)
end
