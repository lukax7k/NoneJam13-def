
#region Variáveis

alvo = noone
estado = noone
escala = 1
cam_w = camera_get_view_width(view_camera[0])
cam_h = camera_get_view_height(view_camera[0])

#endregion

#region Funções

segue_alvo = function()
{
    // pegando a largura da camera
    var _view_w = camera_get_view_width(view_camera[0])
    
    // pegando a altura da camera
    var _view_h = camera_get_view_height(view_camera[0])
    
    // posição da camera
    var _cam_x = x - _view_w /2
    var _cam_y = y - _view_h /2
    
    // impedindo que a câmera mostre fora da room
    _cam_x = clamp(_cam_x, 0, room_width - _view_w)
    _cam_y = clamp(_cam_y, 0, room_height - _view_h)
    
    // definindo a posição da camera
    camera_set_view_pos(view_camera[0], _cam_x, _cam_y)
    
    
    if (alvo)
    {
        x = lerp(x, alvo.x, .5)
        y = lerp(y, alvo.y, .5)
    }
    
}

// seguindo o player
segue_player = function()
{
    estado = segue_nada
    
    if (instance_exists(obj_player))
    {
        alvo = obj_player
        estado = segue_player
    }
    
    
    segue_alvo()
    
}

segue_nada = function()
{
    alvo = noone
}

#endregion

estado = segue_player