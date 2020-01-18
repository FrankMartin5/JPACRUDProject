package com.skilldistillery.pokedex.data;

import com.skilldistillery.pokedex.entities.Pokemon;

public interface PokemonDAO {
	public Pokemon findByID(int id);
	public Pokemon findByName(String name);
	public Pokemon createPkmn(Pokemon pkmn);
	public Pokemon updatePkmn(int id, Pokemon pkmn);
	public boolean deletePkmn(int id);
}
