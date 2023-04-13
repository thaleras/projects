-- Tabela com os jogos dos ultimos 30 dias
with tb_lobby as(

	SELECT * 
	FROM tb_lobby_stats_player
    WHERE dtCreatedAt < '2022-02-01'
    and dtCreatedAt > date('2022-02-01', '-30 day') 
),

-- Tabela com as estatisticas dos jogadores nos jogos dos ultimos 30 dias, agrupada por jogador	
tb_stats as(
	SELECT
		count(distinct idLobbyGame) as qtd_partidas,
		count(distinct date (dtCreatedAt)) as qtd_dias,
	   1.0 * count(distinct idLobbyGame) / count(distinct date(dtCreatedAt)) as qtd_partida_dia,  
		avg(qtKill) as avg_qtKill,
		avg(qtAssist) as avg_qtAssist,
		avg(qtDeath) as avg_qtDeath,
		avg(qtHs) as avg_qtHs,
		avg(qtBombeDefuse) as avg_qtBombeDefuse,
		avg(qtBombePlant) as avg_qtBombePlant,
		avg(qtTk) as avg_qtTk,
		avg(qtTkAssist) as avg_qtTkAssist,
		avg(qt1Kill) as avg_qt1Kill,
		avg(qt2Kill) as avg_qt2Kill,
		avg(qt3Kill) as avg_qt3Kill,
		avg(qt4Kill) as avg_qt4Kill,
		avg(qt5Kill) as avg_qt5Kill,
		avg(qtPlusKill) as avg_qtPlusKill,
		avg(qtFirstKill) as avg_qtFirstKill,
		avg(vlDamage) as avg_vlDamage,
		avg(qtHits) as avg_qtHits,
		avg(qtShots) as avg_qtShots,
		avg(qtLastAlive) as avg_qtLastAlive,
		avg(qtClutchWon) as avg_qtClutchWon,
		avg(qtRoundsPlayed) as avg_qtRoundsPlayed,
		avg(descMapName) as avg_descMapName,
		avg(vlLevel) as avg_vlLevel,
		avg(qtSurvived) as avg_qtSurvived,
		avg(qtTrade) as avg_qtTrade,
		avg(qtFlashAssist) as avg_qtFlashAssist,
		avg(qtHitHeadshot) as avg_qtHitHeadshot,
		avg(qtHitChest) as avg_qtHitChest,
		avg(qtHitStomach) as avg_qtHitStomach,
		avg(qtHitLeftAtm) as avg_qtHitLeftAtm,
		avg(qtHitRightArm) as avg_qtHitRightArm,
		avg(qtHitLeftLeg) as avg_qtHitLeftLeg,
		avg(qtHitRightLeg) as avg_qtHitRightLeg,
		avg(flWinner) as avg_flWinner,
		count(distinct case when descMapName = 'de_ancient' then idLobbyGame end) as qtd_de_ancient,  
		count(distinct case when descMapName = 'de_ancient' and flWinner =1 then idLobbyGame end) as qtd_vitorias_de_ancient,
		count(distinct case when descMapName = 'de_dust2' then idLobbyGame end) as qtd_de_dust2,  
		count(distinct case when descMapName = 'de_dust2' and flWinner =1 then idLobbyGame end) as qtd_vitorias_de_dust2,
		count(distinct case when descMapName = 'de_inferno' then idLobbyGame end) as qtd_de_inferno,  
		count(distinct case when descMapName = 'de_inferno' and flWinner =1 then idLobbyGame end) as qtd_vitorias_de_inferno,
		count(distinct case when descMapName = 'de_mirage' then idLobbyGame end) as qtd_de_mirage,  
		count(distinct case when descMapName = 'de_mirage' and flWinner =1 then idLobbyGame end) as qtd_vitorias_de_mirage,
		count(distinct case when descMapName = 'de_nuke' then idLobbyGame end) as qtd_de_nuke,  
		count(distinct case when descMapName = 'de_nuke' and flWinner =1 then idLobbyGame end) as qtd_vitorias_de_nuke,
		count(distinct case when descMapName = 'de_overpass' then idLobbyGame end) as qtd_de_overpass,  
		count(distinct case when descMapName = 'de_overpass' and flWinner =1 then idLobbyGame end) as qtd_vitorias_de_overpass,
		count(distinct case when descMapName = 'de_train' then idLobbyGame end) as qtd_de_train,  
		count(distinct case when descMapName = 'de_train' and flWinner =1 then idLobbyGame end) as qtd_vitorias_de_train,
		count(distinct case when descMapName = 'de_vertigo' then idLobbyGame end) as qtd_de_vertigo,  
		count(distinct case when descMapName = 'de_vertigo' and flWinner =1 then idLobbyGame end) as qtd_vitorias_de_vertigo,
		count(distinct case when qtRoundsPlayed < 16 then idLobbyGame end) as qtd_partidas_menos_16rounds,    
		1.0 * count(distinct (qtKill + qtAssist) / qtDeath) as avg_kda,
		1.0 * sum(qtKill + qtAssist) / sum(qtDeath) as kda_geral,
		1.0 * count(distinct (qtKill + qtAssist) / qtRoundsPlayed) as avg_kar,
		1.0 * sum(qtKill + qtAssist) / sum(qtRoundsPlayed) as kar_geral,
		1.0 * count(distinct vlDamage / qtRoundsPlayed) as avg_damage_x_round,
		1.0 * sum(vlDamage) / sum(qtRoundsPlayed) as damage_x_round_geral,
		avg(qtHitHeadshot) as avg_hs,
		avg(qtHitStomach) as avg_hit_stomach,
		avg(qtHitChest) as avg_hit_chest,
		avg(qtHitLeftAtm) as avg_hit_left_arm,
		avg(qtHitLeftLeg) as avg_hs_hit_lef_leg,
		avg(qtHitRightArm) as avg_hs_hit_right_arm,
		avg(qtHitRightLeg) as avg_hs_hit_rigth_leg

	FROM tb_lobby
	
	GROUP BY idPlayer
),

-- Tabela com o level atual do jogador conforme a ultima partida jogada
tb_level_atual as(

	SELECT 
		idPlayer,
		vlLevel
		
		FROM(
			SELECT
				idPlayer, 
				idLobbyGame,
				vlLevel,
				dtCreatedAt,
				row_number() OVER(PARTITION by idPlayer order by dtCreatedAt desc) as ranking
				
			FROM tb_lobby)
		
		WHERE ranking = 1
		
) 





