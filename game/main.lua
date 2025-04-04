require "game";
function love.load()
	love.window.setMode(600,800);
	game.init();
end

function love.update(dt)
	game.update();
end

function love.draw()
	game.draw();
end
