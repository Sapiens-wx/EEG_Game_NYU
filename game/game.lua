game={};
game.player={};
game.init=function()
	game.player.x=love.graphics.getWidth()/2;
	game.player.y=love.graphics.getHeight()/2;
	game.player.w=20;
	game.player.h=30;
	game.player.v=3;
end

game.update=function()
	if love.keyboard.isDown("left") and game.player.x>0 then
		game.player.x=game.player.x-game.player.v;
	elseif love.keyboard.isDown("right") and game.player.x<love.graphics.getWidth() then
		game.player.x=game.player.x+game.player.v;
	end
end

game.draw=function()
	game.player.draw();
end

game.player.draw=function()
	love.graphics.rectangle("fill",game.player.x-game.player.w/2, game.player.y-game.player.h/2, game.player.w, game.player.h);
end
