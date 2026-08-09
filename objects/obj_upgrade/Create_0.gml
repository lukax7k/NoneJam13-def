timer_checar = 10

pai = noone

tam_linha = 0

xscale = image_xscale
yscale = image_yscale

mouse_sobre = false

ativei = false
para_ativacao = false

level = variable_global_get(variavel)

meu_tooltip = noone

titulo = "Aumento"
desc = "Descrição"

mouse_entra = function()
{
    var _mouse_sobre = position_meeting(mouse_x, mouse_y, id)
    var _mouse_click = mouse_check_button_pressed(mb_left)
    
    if (_mouse_sobre && !mouse_sobre)
    {
        mouse_sobre = true
        
        tween(id, "xscale", 1.5, tween_animation.elastic, 20)
        tween(id, "yscale", 1.5, tween_animation.elastic, 20)
        
        if (ativo && meu_tooltip == noone)
        {
            meu_tooltip = instance_create_layer(x + 60, y - 30, "Tooltip", obj_tooltip)
            atualiza_tooltip()
        }
    }
    
    
}

passa_desc = function()
{
    switch (aumento) 
    {
        case "aumento_dano_player":
        {
            titulo = "Tiro potente"
            desc = "Aumenta o dano causado em todos os inimigos"
            max_level = 3
        }	
        break
        case "aumento_vel_player":
        {
            titulo = "Agilidade"
            desc = "Aumenta sua velocidade de movimento"
            max_level = 2
        }	
        break
        case "aumento_vel_tiros_player":
        {
            titulo = "Tiro rápido"
            desc = "Aumenta sua velocidade de ataque"
            max_level = 5
        }	
        break
        case "aumento_vida_player":
        {
            titulo = "Fortalecimento"
            desc = "Aumenta sua vida máxima"
            max_level = 4
        }	
        break
        case "aumento_tiros_player":
        {
            titulo = "Munição extra"
            desc = "Aumenta a quantidade de tiros por disparo"
            max_level = 1
        }	
        break
        case "aumento_cooldown_esquiva":
        {
            titulo = "Reflexos"
            desc = "Diminui o tempo de recarga da esquiva"
            max_level = 4
        }	
        break
    
        case "aumento_drop_chance_gold":
        {
            titulo = "Lucrando"
            desc = "Aumenta a chance de conseguir ouro de inimigos"
            max_level = 2
        }	
        break
    
        case "aumento_drop_chance_slime":
        {
            titulo = "Gosmento"
            desc = "Aumenta a chance de conseguir gosma de slimes"
            max_level = 3
        }	
        break
    
        case "aumento_drop_chance_bones":
        {
            titulo = "Coveiro"
            desc = "Aumenta a chance de conseguir ossos de esqueletos"
            max_level = 3
        }	
        break
        
        case "aumento_drop_chance_claws":
        {
            titulo = "Arranhador"
            desc = "Aumenta a chance de conseguir garras de goblins"
            max_level = 3
        }	
        break
        
        case "aumento_drop_gold":
        {
            titulo = "Valorização"
            desc = "Aumenta a quantidade de ouro derrubado de inimigos"
            max_level = 2
        }	
        break
        
        case "aumento_drop_slime":
        {
            titulo = "Slime!"
            desc = "Aumenta a quantidade de gosma derrubada de slimes"
            max_level = 3
        }	
        break
        
        case "aumento_drop_bones":
        {
            titulo = "Osso duro"
            desc = "Aumenta a quantidade de ossos derrubados de inimigos"
            max_level = 3
        }	
        break
        
        case "aumento_drop_claws":
        {
            titulo = "Garras vorazes"
            desc = "Aumenta a quantidade de garras derrubadas de inimigos"
            max_level = 3
        }	
        break
        
        case "aumento_dano_fogo":
        {
            titulo = "Bola de fogo!"
            desc = "Aumenta o dano causado pela runa Bola de Fogo"
            max_level = 2
        }	
        break
        
        case "aumento_alcance_fogo":
        {
            titulo = "Verão"
            desc = "Aumenta o alcance da runa Bola de Fogo"
            max_level = 3
        }	
        break
        
        case "aumento_dano_raio":
        {
            titulo = "Eletrizante"
            desc = "Aumenta o dano causado pela runa Eletrocutar"
            max_level = 2
        }	
        break
        
        case "aumento_alcance_raio":
        {
            titulo = "Extensão"
            desc = "Aumenta o número de inimigos afetados pela runa Eletrocutar"
            max_level = 3
        }	
        break
        
        case "aumento_dano_shard":
        {
            titulo = "Fragmentado"
            desc = "Aumenta o dano causado pela runa Tiro Fragmentado"
            max_level = 2
        }	
        break
        
        case "aumento_lentidao_gelo":
        {
            titulo = "Raio congelante!"
            desc = "Aumenta a lentidão causada em inimigos pela runa Bomba Congelante"
            max_level = 3
        }	
        break
        
        case "aumento_alcance_gelo":
        {
            titulo = "Bola de neve"
            desc = "Aumenta o alcance da runa Bomba Congelante"
            max_level = 3
        }	
        break
        
        case "aumento_dano_dash":
        {
            titulo = "Toque chocante"
            desc = "Aumenta o dano causado pela runa Esquiva Elétrica"
            max_level = 2
        }	
        break
        
        case "aumento_alcance_agua":
        {
            titulo = "Maré alta"
            desc = "Aumenta o alcance da runa Onda d'Água"
            max_level = 3
        }	
        break
        
        case "aumento_dano_eco":
        {
            titulo = "Calamidade"
            desc = "Aumenta o dano causado pela runa Eco de Morte"
            max_level = 2
        }	
        break
        
        case "aumento_dano_veneno":
        {
            titulo = "Radiação"
            desc = "Aumenta o dano causado pela runa Gás Venenoso"
            max_level = 2
        }	
        break
        
        case "aumento_duracao_veneno":
        {
            titulo = "Mutação"
            desc = "Aumenta o tempo de duração do envenenamento da runa Gás Venenoso"
            max_level = 3
        }	
        break
        
        case "aumento_dano_estrela":
        {
            titulo = "Brilha Brilha"
            desc = "Aumenta o dano causado pela runa Estrela Orbital"
            max_level = 2
        }	
        break
            
        case "aumento_alcance_vento":
        {
            titulo = "Sopro"
            desc = "Aumenta o alcance da runa Vendaval"
            max_level = 2
        }	
        break
        
        case "aumento_dano_espinho":
        {
            titulo = "Auto-defesa"
            desc = "Aumenta o dano causado pela runa Espinhos"
            max_level = 2
        }	
        break
        
        
        
            
        
        
    
        
        
        
        
        
        
        
    }
}

atualiza_tooltip = function()
{
    passa_desc()
    
    if (ativo && meu_tooltip != noone)
    {
        var _custo_atual = custo + ceil(custo * .5) * level
        var _custo_atual_2 = custo_2 + ceil(custo_2 * .5) * level
        
        meu_tooltip.meu_nivel = level
        meu_tooltip.meu_nivel_max = max_level
        meu_tooltip.meu_dinheiro_1 = moeda
        meu_tooltip.meu_custo_1 = _custo_atual
        meu_tooltip.meu_spr = spr
        meu_tooltip.meu_titulo = titulo
        meu_tooltip.meu_texto = desc
        
        var _dinheiro_2 = variable_global_get(moeda_2)
        
        if (_dinheiro_2 != undefined)
        {
            meu_tooltip.meu_dinheiro_2 = moeda_2
            meu_tooltip.meu_custo_2 = _custo_atual_2
        }
    }
}

mouse_sai = function()
{
    var _mouse_sobre = position_meeting(mouse_x, mouse_y, id)
    
    if (!_mouse_sobre && mouse_sobre)
    {
        tween(id, "xscale", 1, tween_animation.elastic, 20)
        tween(id, "yscale", 1, tween_animation.elastic, 20)
        
        mouse_sobre = false
        
        if (meu_tooltip != noone)
        {
            instance_destroy(meu_tooltip)
            meu_tooltip = noone
        }
    }
    
    
}

crescendo = function()
{
    if (ativei && !para_ativacao)
    { 
        tween(id, "xscale", 1, tween_animation.bounce, 30)
        tween(id, "yscale", 1, tween_animation.bounce, 30)
        
        ativei = false
        para_ativacao = true
    }
    
}
