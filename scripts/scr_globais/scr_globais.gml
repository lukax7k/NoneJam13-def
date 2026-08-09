
// skilltree


global.zoom = 1
global.mostra_saves = 0
global.apagar_saves = false

#region Variaveis

global.dano_1 = 0
global.dano_2 = 0
global.dano_3 = 0
global.dano_4 = 0
global.dano_5 = 0
global.dano_6 = 0
global.dano_7 = 0
global.dano_8 = 0

global.qtd_tiros_1 = 0
global.qtd_tiros_2 = 0

global.vel_1 = 0
global.vel_2 = 0
global.vel_3 = 0
global.vel_4 = 0
global.vel_5 = 0

global.vida_1 = 0
global.vida_2 = 0
global.vida_3 = 0
global.vida_4 = 0
global.vida_5 = 0

global.esquiva_1 = 0
global.esquiva_2 = 0
global.esquiva_3 = 0
global.esquiva_4 = 0
global.esquiva_5 = 0

global.vel_ataque_1 = 0
global.vel_ataque_2 = 0
global.vel_ataque_3 = 0
global.vel_ataque_4 = 0

global.slime_drop_1 = 0
global.slime_drop_2 = 0

global.slime_chance_1 = 0
global.slime_chance_2 = 0

global.esqueleto_drop_1 = 0
global.esqueleto_drop_2 = 0

global.esqueleto_chance_1 = 0
global.esqueleto_chance_2 = 0

global.goblin_drop_1 = 0
global.goblin_drop_2 = 0

global.goblin_chance_1 = 0
global.goblin_chance_2 = 0

global.gold_drop_1 = 0
global.gold_drop_2 = 0
global.gold_drop_3 = 0
global.gold_drop_4 = 0
global.gold_drop_5 = 0

global.gold_chance_1 = 0
global.gold_chance_2 = 0
global.gold_chance_3 = 0
global.gold_chance_4 = 0

global.dano_fogo_1 = 0
global.dano_fogo_2 = 0

global.alcance_fogo_1 = 0

global.dano_raio_1 = 0
global.dano_raio_2 = 0

global.alcance_raio_1 = 0
global.alcance_raio_2 = 0

global.dano_shard_1 = 0
global.dano_shard_2 = 0

global.lentidao_gelo_1 = 0

global.alcance_gelo_1 = 0

global.dano_dash_1 = 0
global.dano_dash_2 = 0

global.alcance_agua_1 = 0

global.dano_eco_1 = 0
global.dano_eco_2 = 0

global.dano_veneno_1 = 0

global.duracao_veneno_1 = 0
global.duracao_veneno_2 = 0

global.dano_estrela_1 = 0
global.dano_estrela_2 = 0

global.alcance_vento_1 = 0
global.alcance_vento_2 = 0

global.dano_espinho_1 = 0
global.dano_espinho_2 = 0



global.power_up_qtd_tiros = 1

// variaveis de bonus
global.aumento_dano_player = 0
global.aumento_tiros_player = 0
global.aumento_vel_player = 0
global.aumento_vida_player = 0
global.aumento_cooldown_esquiva = 0
global.aumento_vel_tiros_player = 0

global.aumento_drop_chance_gold = 0
global.aumento_drop_chance_slime = 0
global.aumento_drop_chance_bones = 0
global.aumento_drop_chance_claws = 0
global.aumento_drop_gold = 0
global.aumento_drop_slime = 0
global.aumento_drop_bones = 0
global.aumento_drop_claws = 0

global.aumento_dano_fogo = 0
global.aumento_alcance_fogo = 0
global.aumento_alcance_raio = 0
global.aumento_dano_raio = 0
global.aumento_dano_shard = 0
global.aumento_lentidao_gelo = 0
global.aumento_alcance_gelo = 0
global.aumento_dano_dash = 0
global.aumento_alcance_agua = 0
global.aumento_dano_eco = 0
global.aumento_dano_veneno = 0
global.aumento_duracao_veneno = 0
global.aumento_dano_estrela = 0
global.aumento_alcance_vento = 0
global.aumento_dano_espinho = 0

#endregion


global.pause = false
global.in_transition = false
global.tela_power_up = false

global.wave = 1
global.game_over = false
global.salas_liberadas = 0
global.level_4_descoberto = 0

global.player_win = false
global.player_loose = false

global.runa_1 = noone
global.runa_2 = noone
global.runa_3 = noone

// volume

global.musica = .5
global.sons = .5

// cinematica

global.level_1_completo = false
global.level_1a = false
global.level_1a_completo = false
global.level_1b = false
global.level_1b_completo = false

global.chefe_1_derrotado = false
global.chefe_2_derrotado = false
global.chefe_3_derrotado = false


global.level_2_completo = false
global.level_2a = false
global.level_2a_completo = false
global.level_2b = false
global.level_2b_completo = false

global.level_3_completo = false
global.level_3a = false
global.level_3a_completo = false
global.level_3b = false
global.level_3b_completo = false

global.level_4_completo = false
global.level_4a = false
global.level_4b = false

// moedas

global.gold = 0
global.slime = 0
global.bones = 0
global.claw = 0

// Power-ups

global.power_up_raio = false

global.power_up_fogo = false

global.power_up_shard = false

global.power_up_ricochete = false

global.power_up_gelo = false

global.power_up_dash_raio = false

global.power_up_agua = false

global.power_up_alma = false

global.power_up_acido = false

global.power_up_estrela = false

global.power_up_tamanho = false

global.power_up_vendaval = false

global.power_up_espelho = false

global.power_up_espinhos = false

global.power_ups_atuais = []


function reseta_powerups()
{
    global.power_up_raio = true

    global.power_up_fogo = false
    
    global.power_up_shard = false
    
    global.power_up_ricochete = false
    
    global.power_up_gelo = false
    
    global.power_up_dash_raio = false
    
    global.power_up_agua = false
    
    global.power_up_alma = false
    
    global.power_up_acido = false
    
    global.power_up_estrela = false
    
    global.power_up_tamanho = false
    
    global.power_up_vendaval = false
    
    global.power_up_espelho = false
    
    global.power_up_espinhos = false
    
    global.power_ups_atuais = []
    
    salvar_jogo()
}


global.power_up_list = 
[
    {nome : "Bola de Fogo", spr : spr_runa_fogo, variavel : "power_up_fogo", desc : "Atingir inimigos cria uma explosão de fogo que causa dano em área"},
    {nome : "Eletrocutar", spr : spr_runa_raio, variavel : "power_up_raio", desc : "Atingir inimigos cria raios que causam dano em inimigos próximos"},
    {nome : "Tiro Fragmentado", spr : spr_runa_shard, variavel : "power_up_shard", desc : "Tiros explodem em pequenos fragmentos de tiro"},
    {nome : "Ricochete", spr : spr_runa_ricochete, variavel : "power_up_ricochete", desc : "Tiros refletem ao atingir paredes, renovando a duração desse tiro e aumentando seu dano"},
    {nome : "Bomba Congelante", spr : spr_runa_gelo, variavel : "power_up_gelo", desc : "Ao acertar inimigos, cria uma pequena explosão de gelo, causando lentidão em inimigos próximos"},
    {nome : "Esquiva Elétrica", spr : spr_runa_dash, variavel : "power_up_dash_raio", desc : "Ao esquivar, emite uma carga elétrica que causa dano a inimigos que tocarem você"},
    {nome : "Onda d'Água", spr : spr_runa_agua, variavel : "power_up_agua", desc : "De tempos em tempos emite um pulso de água que empurra inimigos e os deixa molhados, aumentando os danos elétricos"},
    {nome : "Eco de morte", spr : spr_runa_eco, variavel : "power_up_alma", desc : "Quando um inimigo morre, ele explode em pequenos fragmentos que causam dano em outros inimigos"},
    {nome : "Gás venenoso", spr : spr_runa_acido, variavel : "power_up_acido", desc : "Cria um rastro de veneno a partir de você, envenenando inimigos na área, inimigos envenenados recebem dano por segundo"},
    {nome : "Estrela Orbital", spr : spr_runa_estrela, variavel : "power_up_estrela", desc : "Uma pequena estrela surge ao seu redor, causando dano em inimigos que atingir"},
    {nome : "Tiro Gigante", spr : spr_runa_tamanho, variavel : "power_up_tamanho", desc : "Aumenta muito o tamanho de seus tiros, atingindo inimigos com mais facilidade"},
    {nome : "Vendaval", spr : spr_runa_vento, variavel : "power_up_vendaval", desc : "Acertar inimigos cria uma onda de vento, empurrando inimigos para longe de você"},
    {nome : "Espelho", spr : spr_runa_espelho, variavel : "power_up_espelho", desc : "Ao atirar, cria um tiro espelhado na direção oposta ao tiro original"},
    {nome : "Espinhos", spr : spr_runa_espinho, variavel : "power_up_espinhos", desc : "Quando sofrer dano, libera pequenos fragmentos que causam dano em inimigos"},
    
]

global.powerups_disponiveis = []

array_copy(global.powerups_disponiveis, 0, global.power_up_list, 0, array_length(global.power_up_list))




// sistema de save


global.save_atual = 1

// função de save

function salvar_jogo()
{
    var _struct_cinematicas =
    {
        salas_liberadas : global.salas_liberadas,
        level_4_descoberto : global.level_4_descoberto,
        
        level_1_completo : global.level_1_completo,
        level_1a : global.level_1a,
        level_1a_completo : global.level_1a_completo,
        level_1b : global.level_1b,
        level_1b_completo : global.level_1b_completo,
        chefe_1_derrotado : global.chefe_1_derrotado,
        chefe_2_derrotado : global.chefe_2_derrotado,
        chefe_3_derrotado : global.chefe_3_derrotado,
        level_2_completo : global.level_2_completo,
        level_2a : global.level_2a,
        level_2a_completo : global.level_2a_completo,
        level_2b : global.level_2b,
        level_2b_completo : global.level_2b_completo,
        level_3_completo : global.level_3_completo,
        level_3a : global.level_3a,
        level_3a_completo : global.level_3a_completo,
        level_3b : global.level_3b,
        level_3b_completo : global.level_3b_completo,
        level_4_completo : global.level_4_completo,
        level_4a : global.level_4a,
        level_4b : global.level_4b,
        
    }
    
    var _struct_dinheiros = 
    {
        gold : global.gold,
        slime : global.slime,
        bones : global.bones,
        claw : global.claw,
    }
    
    var _struct_sons =
    {
        musica : global.musica,
        sons : global.sons,
    }
    
    var _struct_skilltree =
    {
        dano_1 : global.dano_1,
        dano_2 : global.dano_2,
        dano_3 : global.dano_3,
        dano_4 : global.dano_4,
        dano_5 : global.dano_5,
        dano_6 : global.dano_6,
        dano_7 : global.dano_7,
        dano_8 : global.dano_8,
        qtd_tiros_1 : global.qtd_tiros_1,
        qtd_tiros_2 : global.qtd_tiros_2,
        vel_1 : global.vel_1,
        vel_2 : global.vel_2,
        vel_3 : global.vel_3,
        vel_4 : global.vel_4,
        vel_5 : global.vel_5,
        vida_1 : global.vida_1,
        vida_2 : global.vida_2,
        vida_3 : global.vida_3,
        vida_4 : global.vida_4,
        vida_5 : global.vida_5,
        esquiva_1 : global.esquiva_1,
        esquiva_2 : global.esquiva_2,
        esquiva_3 : global.esquiva_3,
        esquiva_4 : global.esquiva_4,
        esquiva_5 : global.esquiva_5,
        vel_ataque_1 : global.vel_ataque_1,
        vel_ataque_2 : global.vel_ataque_2,
        vel_ataque_3 : global.vel_ataque_3,
        vel_ataque_4 : global.vel_ataque_4,
        slime_drop_1 : global.slime_drop_1,
        slime_drop_2 : global.slime_drop_2,
        slime_chance_1 : global.slime_chance_1,
        slime_chance_2 : global.slime_chance_2,
        esqueleto_drop_1 : global.esqueleto_drop_1,
        esqueleto_drop_2 : global.esqueleto_drop_2,
        esqueleto_chance_1 : global.esqueleto_chance_1,
        esqueleto_chance_2 : global.esqueleto_chance_2,
        goblin_drop_1 : global.goblin_drop_1,
        goblin_drop_2 : global.goblin_drop_2,
        goblin_chance_1 : global.goblin_chance_1,
        goblin_chance_2 : global.goblin_chance_2,
        gold_drop_1 : global.gold_drop_1,
        gold_drop_2 : global.gold_drop_2,
        gold_drop_3 : global.gold_drop_3,
        gold_drop_4 : global.gold_drop_4,
        gold_drop_5 : global.gold_drop_5,
        gold_chance_1 : global.gold_chance_1,
        gold_chance_2 : global.gold_chance_2,
        gold_chance_3 : global.gold_chance_3,
        gold_chance_4 : global.gold_chance_4,
        dano_fogo_1 : global.dano_fogo_1,
        dano_fogo_2 : global.dano_fogo_2,
        alcance_fogo_1 : global.alcance_fogo_1,
        dano_raio_1 : global.dano_raio_1,
        dano_raio_2 : global.dano_raio_2,
        alcance_raio_1 : global.alcance_raio_1,
        alcance_raio_2 : global.alcance_raio_2,
        dano_shard_1 : global.dano_shard_1,
        dano_shard_2 : global.dano_shard_2,
        lentidao_gelo_1 : global.lentidao_gelo_1,
        alcance_gelo_1 : global.alcance_gelo_1,
        dano_dash_1 : global.dano_dash_1,
        dano_dash_2 : global.dano_dash_2,
        alcance_agua_1 : global.alcance_agua_1,
        dano_eco_1 : global.dano_eco_1,
        dano_eco_2 : global.dano_eco_2,
        dano_veneno_1 : global.dano_veneno_1,
        duracao_veneno_1 : global.duracao_veneno_1,
        duracao_veneno_2 : global.duracao_veneno_2,
        dano_estrela_1 : global.dano_estrela_1,
        dano_estrela_2 : global.dano_estrela_2,
        alcance_vento_1 : global.alcance_vento_1,
        alcance_vento_2 : global.alcance_vento_2,
        dano_espinho_1 : global.dano_espinho_1,
        dano_espinho_2 : global.dano_espinho_2,
        power_up_qtd_tiros : global.power_up_qtd_tiros,
        aumento_dano_player : global.aumento_dano_player,
        aumento_tiros_player : global.aumento_tiros_player,
        aumento_vel_player : global.aumento_vel_player,
        aumento_vida_player : global.aumento_vida_player,
        aumento_cooldown_esquiva : global.aumento_cooldown_esquiva,
        aumento_vel_tiros_player : global.aumento_vel_tiros_player,
        aumento_drop_chance_gold : global.aumento_drop_chance_gold,
        aumento_drop_chance_slime : global.aumento_drop_chance_slime,
        aumento_drop_chance_bones : global.aumento_drop_chance_bones,
        aumento_drop_chance_claws : global.aumento_drop_chance_claws,
        aumento_drop_gold : global.aumento_drop_gold,
        aumento_drop_slime : global.aumento_drop_slime,
        aumento_drop_bones : global.aumento_drop_bones,
        aumento_drop_claws : global.aumento_drop_claws,
        aumento_dano_fogo : global.aumento_dano_fogo,
        aumento_alcance_fogo : global.aumento_alcance_fogo,
        aumento_alcance_raio : global.aumento_alcance_raio,
        aumento_dano_raio : global.aumento_dano_raio,
        aumento_dano_shard : global.aumento_dano_shard,
        aumento_lentidao_gelo : global.aumento_lentidao_gelo,
        aumento_alcance_gelo : global.aumento_alcance_gelo,
        aumento_dano_dash : global.aumento_dano_dash,
        aumento_alcance_agua : global.aumento_alcance_agua,
        aumento_dano_eco : global.aumento_dano_eco,
        aumento_dano_veneno : global.aumento_dano_veneno,
        aumento_duracao_veneno : global.aumento_duracao_veneno,
        aumento_dano_estrela : global.aumento_dano_estrela,
        aumento_alcance_vento : global.aumento_alcance_vento,
        aumento_dano_espinho : global.aumento_dano_espinho,
    }
    
    var _struct = 
    {
        cinematicas : _struct_cinematicas,
        dinheiros : _struct_dinheiros,
        sons : _struct_sons,
        skilltree : _struct_skilltree
    }
    
    var _string = json_stringify(_struct)

    var _buff = buffer_create(0, buffer_grow, 1)
    
    buffer_write(_buff, buffer_string, _string)
    
    buffer_save(_buff, string("sunnysave{0}.json", global.save_atual))
    
    buffer_delete(_buff)
}



function _campo(_struct, _chave, _default)
{
    if (variable_struct_exists(_struct, _chave))
        return _struct[$ _chave];
    return _default;
}

function carrega_config()
{
    var _buff = buffer_load("config.json")

    if (_buff == -1)
    {
        global.musica = .5
        global.sons = .5
    }
    else
    {
        var _string = buffer_read(_buff, buffer_string)
        var _struct = json_parse(_string)
        buffer_delete(_buff)

        global.musica = _campo(_struct, "musica", .5)
        global.sons   = _campo(_struct, "sons", .5)
    }

}

carrega_config()

function salva_config()
{
    var _struct =
    {
        musica : global.musica,
        sons : global.sons,
    }

    var _string = json_stringify(_struct)

    var _buff = buffer_create(0, buffer_grow, 1)
    buffer_write(_buff, buffer_string, _string)
    buffer_save(_buff, "config.json")
    buffer_delete(_buff)
}


function carrega_jogo()
{
    var _arquivo = string("sunnysave{0}.json", global.save_atual)
    var _buff = buffer_load(_arquivo)

    var _struct;
    if (_buff == -1)
    {
        _struct = {}  
    }
    else
    {
        var _string = buffer_read(_buff, buffer_string)
        _struct = json_parse(_string)
        buffer_delete(_buff)
    }

    var _struct_cinematicas = variable_struct_exists(_struct, "cinematicas") ? _struct.cinematicas : {}
    var _struct_dinheiros   = variable_struct_exists(_struct, "dinheiros")   ? _struct.dinheiros   : {}
    var _struct_skilltree   = variable_struct_exists(_struct, "skilltree")   ? _struct.skilltree   : {}

    // dinheiros
    global.gold  = _campo(_struct_dinheiros, "gold", 0)
    global.slime = _campo(_struct_dinheiros, "slime", 0)
    global.bones = _campo(_struct_dinheiros, "bones", 0)
    global.claw  = _campo(_struct_dinheiros, "claw", 0)

    // cinematicas
    global.salas_liberadas     = _campo(_struct_cinematicas, "salas_liberadas", 0)
    global.level_4_descoberto  = _campo(_struct_cinematicas, "level_4_descoberto", 0)
    global.level_1_completo    = _campo(_struct_cinematicas, "level_1_completo", false)
    global.level_1a            = _campo(_struct_cinematicas, "level_1a", false)
    global.level_1a_completo   = _campo(_struct_cinematicas, "level_1a_completo", false)
    global.level_1b            = _campo(_struct_cinematicas, "level_1b", false)
    global.level_1b_completo   = _campo(_struct_cinematicas, "level_1b_completo", false)
    global.chefe_1_derrotado   = _campo(_struct_cinematicas, "chefe_1_derrotado", false)
    global.chefe_2_derrotado   = _campo(_struct_cinematicas, "chefe_2_derrotado", false)
    global.chefe_3_derrotado   = _campo(_struct_cinematicas, "chefe_3_derrotado", false)
    global.level_2_completo    = _campo(_struct_cinematicas, "level_2_completo", false)
    global.level_2a            = _campo(_struct_cinematicas, "level_2a", false)
    global.level_2a_completo   = _campo(_struct_cinematicas, "level_2a_completo", false)
    global.level_2b            = _campo(_struct_cinematicas, "level_2b", false)
    global.level_2b_completo   = _campo(_struct_cinematicas, "level_2b_completo", false)
    global.level_3_completo    = _campo(_struct_cinematicas, "level_3_completo", false)
    global.level_3a            = _campo(_struct_cinematicas, "level_3a", false)
    global.level_3a_completo   = _campo(_struct_cinematicas, "level_3a_completo", false)
    global.level_3b            = _campo(_struct_cinematicas, "level_3b", false)
    global.level_3b_completo   = _campo(_struct_cinematicas, "level_3b_completo", false)
    global.level_4_completo    = _campo(_struct_cinematicas, "level_4_completo", false)
    global.level_4a            = _campo(_struct_cinematicas, "level_4a", false)
    global.level_4b            = _campo(_struct_cinematicas, "level_4b", false)

    // skilltree
    global.dano_1 = _campo(_struct_skilltree, "dano_1", 0)
    global.dano_2 = _campo(_struct_skilltree, "dano_2", 0)
    global.dano_3 = _campo(_struct_skilltree, "dano_3", 0)
    global.dano_4 = _campo(_struct_skilltree, "dano_4", 0)
    global.dano_5 = _campo(_struct_skilltree, "dano_5", 0)
    global.dano_6 = _campo(_struct_skilltree, "dano_6", 0)
    global.dano_7 = _campo(_struct_skilltree, "dano_7", 0)
    global.dano_8 = _campo(_struct_skilltree, "dano_8", 0)
    global.qtd_tiros_1 = _campo(_struct_skilltree, "qtd_tiros_1", 0)
    global.qtd_tiros_2 = _campo(_struct_skilltree, "qtd_tiros_2", 0)
    global.vel_1 = _campo(_struct_skilltree, "vel_1", 0)
    global.vel_2 = _campo(_struct_skilltree, "vel_2", 0)
    global.vel_3 = _campo(_struct_skilltree, "vel_3", 0)
    global.vel_4 = _campo(_struct_skilltree, "vel_4", 0)
    global.vel_5 = _campo(_struct_skilltree, "vel_5", 0)
    global.vida_1 = _campo(_struct_skilltree, "vida_1", 0)
    global.vida_2 = _campo(_struct_skilltree, "vida_2", 0)
    global.vida_3 = _campo(_struct_skilltree, "vida_3", 0)
    global.vida_4 = _campo(_struct_skilltree, "vida_4", 0)
    global.vida_5 = _campo(_struct_skilltree, "vida_5", 0)
    global.esquiva_1 = _campo(_struct_skilltree, "esquiva_1", 0)
    global.esquiva_2 = _campo(_struct_skilltree, "esquiva_2", 0)
    global.esquiva_3 = _campo(_struct_skilltree, "esquiva_3", 0)
    global.esquiva_4 = _campo(_struct_skilltree, "esquiva_4", 0)
    global.esquiva_5 = _campo(_struct_skilltree, "esquiva_5", 0)
    global.vel_ataque_1 = _campo(_struct_skilltree, "vel_ataque_1", 0)
    global.vel_ataque_2 = _campo(_struct_skilltree, "vel_ataque_2", 0)
    global.vel_ataque_3 = _campo(_struct_skilltree, "vel_ataque_3", 0)
    global.vel_ataque_4 = _campo(_struct_skilltree, "vel_ataque_4", 0)
    global.slime_drop_1 = _campo(_struct_skilltree, "slime_drop_1", 0)
    global.slime_drop_2 = _campo(_struct_skilltree, "slime_drop_2", 0)
    global.slime_chance_1 = _campo(_struct_skilltree, "slime_chance_1", 0)
    global.slime_chance_2 = _campo(_struct_skilltree, "slime_chance_2", 0)
    global.esqueleto_drop_1 = _campo(_struct_skilltree, "esqueleto_drop_1", 0)
    global.esqueleto_drop_2 = _campo(_struct_skilltree, "esqueleto_drop_2", 0)
    global.esqueleto_chance_1 = _campo(_struct_skilltree, "esqueleto_chance_1", 0)
    global.esqueleto_chance_2 = _campo(_struct_skilltree, "esqueleto_chance_2", 0)
    global.goblin_drop_1 = _campo(_struct_skilltree, "goblin_drop_1", 0)
    global.goblin_drop_2 = _campo(_struct_skilltree, "goblin_drop_2", 0)
    global.goblin_chance_1 = _campo(_struct_skilltree, "goblin_chance_1", 0)
    global.goblin_chance_2 = _campo(_struct_skilltree, "goblin_chance_2", 0)
    global.gold_drop_1 = _campo(_struct_skilltree, "gold_drop_1", 0)
    global.gold_drop_2 = _campo(_struct_skilltree, "gold_drop_2", 0)
    global.gold_drop_3 = _campo(_struct_skilltree, "gold_drop_3", 0)
    global.gold_drop_4 = _campo(_struct_skilltree, "gold_drop_4", 0)
    global.gold_drop_5 = _campo(_struct_skilltree, "gold_drop_5", 0)
    global.gold_chance_1 = _campo(_struct_skilltree, "gold_chance_1", 0)
    global.gold_chance_2 = _campo(_struct_skilltree, "gold_chance_2", 0)
    global.gold_chance_3 = _campo(_struct_skilltree, "gold_chance_3", 0)
    global.gold_chance_4 = _campo(_struct_skilltree, "gold_chance_4", 0)
    global.dano_fogo_1 = _campo(_struct_skilltree, "dano_fogo_1", 0)
    global.dano_fogo_2 = _campo(_struct_skilltree, "dano_fogo_2", 0)
    global.alcance_fogo_1 = _campo(_struct_skilltree, "alcance_fogo_1", 0)
    global.dano_raio_1 = _campo(_struct_skilltree, "dano_raio_1", 0)
    global.dano_raio_2 = _campo(_struct_skilltree, "dano_raio_2", 0)
    global.alcance_raio_1 = _campo(_struct_skilltree, "alcance_raio_1", 0)
    global.alcance_raio_2 = _campo(_struct_skilltree, "alcance_raio_2", 0)
    global.dano_shard_1 = _campo(_struct_skilltree, "dano_shard_1", 0)
    global.dano_shard_2 = _campo(_struct_skilltree, "dano_shard_2", 0)
    global.lentidao_gelo_1 = _campo(_struct_skilltree, "lentidao_gelo_1", 0)
    global.alcance_gelo_1 = _campo(_struct_skilltree, "alcance_gelo_1", 0)
    global.dano_dash_1 = _campo(_struct_skilltree, "dano_dash_1", 0)
    global.dano_dash_2 = _campo(_struct_skilltree, "dano_dash_2", 0)
    global.alcance_agua_1 = _campo(_struct_skilltree, "alcance_agua_1", 0)
    global.dano_eco_1 = _campo(_struct_skilltree, "dano_eco_1", 0)
    global.dano_eco_2 = _campo(_struct_skilltree, "dano_eco_2", 0)
    global.dano_veneno_1 = _campo(_struct_skilltree, "dano_veneno_1", 0)
    global.duracao_veneno_1 = _campo(_struct_skilltree, "duracao_veneno_1", 0)
    global.duracao_veneno_2 = _campo(_struct_skilltree, "duracao_veneno_2", 0)
    global.dano_estrela_1 = _campo(_struct_skilltree, "dano_estrela_1", 0)
    global.dano_estrela_2 = _campo(_struct_skilltree, "dano_estrela_2", 0)
    global.alcance_vento_1 = _campo(_struct_skilltree, "alcance_vento_1", 0)
    global.alcance_vento_2 = _campo(_struct_skilltree, "alcance_vento_2", 0)
    global.dano_espinho_1 = _campo(_struct_skilltree, "dano_espinho_1", 0)
    global.dano_espinho_2 = _campo(_struct_skilltree, "dano_espinho_2", 0)
    global.power_up_qtd_tiros = _campo(_struct_skilltree, "power_up_qtd_tiros", 1)
    global.aumento_dano_player = _campo(_struct_skilltree, "aumento_dano_player", 0)
    global.aumento_tiros_player = _campo(_struct_skilltree, "aumento_tiros_player", 0)
    global.aumento_vel_player = _campo(_struct_skilltree, "aumento_vel_player", 0)
    global.aumento_vida_player = _campo(_struct_skilltree, "aumento_vida_player", 0)
    global.aumento_cooldown_esquiva = _campo(_struct_skilltree, "aumento_cooldown_esquiva", 0)
    global.aumento_vel_tiros_player = _campo(_struct_skilltree, "aumento_vel_tiros_player", 0)
    global.aumento_drop_chance_gold = _campo(_struct_skilltree, "aumento_drop_chance_gold", 0)
    global.aumento_drop_chance_slime = _campo(_struct_skilltree, "aumento_drop_chance_slime", 0)
    global.aumento_drop_chance_bones = _campo(_struct_skilltree, "aumento_drop_chance_bones", 0)
    global.aumento_drop_chance_claws = _campo(_struct_skilltree, "aumento_drop_chance_claws", 0)
    global.aumento_drop_gold = _campo(_struct_skilltree, "aumento_drop_gold", 0)
    global.aumento_drop_slime = _campo(_struct_skilltree, "aumento_drop_slime", 0)
    global.aumento_drop_bones = _campo(_struct_skilltree, "aumento_drop_bones", 0)
    global.aumento_drop_claws = _campo(_struct_skilltree, "aumento_drop_claws", 0)
    global.aumento_dano_fogo = _campo(_struct_skilltree, "aumento_dano_fogo", 0)
    global.aumento_alcance_fogo = _campo(_struct_skilltree, "aumento_alcance_fogo", 0)
    global.aumento_alcance_raio = _campo(_struct_skilltree, "aumento_alcance_raio", 0)
    global.aumento_dano_raio = _campo(_struct_skilltree, "aumento_dano_raio", 0)
    global.aumento_dano_shard = _campo(_struct_skilltree, "aumento_dano_shard", 0)
    global.aumento_lentidao_gelo = _campo(_struct_skilltree, "aumento_lentidao_gelo", 0)
    global.aumento_alcance_gelo = _campo(_struct_skilltree, "aumento_alcance_gelo", 0)
    global.aumento_dano_dash = _campo(_struct_skilltree, "aumento_dano_dash", 0)
    global.aumento_alcance_agua = _campo(_struct_skilltree, "aumento_alcance_agua", 0)
    global.aumento_dano_eco = _campo(_struct_skilltree, "aumento_dano_eco", 0)
    global.aumento_dano_veneno = _campo(_struct_skilltree, "aumento_dano_veneno", 0)
    global.aumento_duracao_veneno = _campo(_struct_skilltree, "aumento_duracao_veneno", 0)
    global.aumento_dano_estrela = _campo(_struct_skilltree, "aumento_dano_estrela", 0)
    global.aumento_alcance_vento = _campo(_struct_skilltree, "aumento_alcance_vento", 0)
    global.aumento_dano_espinho = _campo(_struct_skilltree, "aumento_dano_espinho", 0)
}