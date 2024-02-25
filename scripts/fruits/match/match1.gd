extends Node2D


func move(target):
	var tween = $Tween
	tween.interpolate_property(self,"position",position,target,1,tween.TRANS_QUINT,tween.EASE_OUT)
	tween.start()




