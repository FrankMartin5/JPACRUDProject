package com.skilldistillery.pokedex.data;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokedex.entities.Pokemon;

@Service
@Transactional
public class PokemonDAOImpl implements PokemonDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Pokemon findByID(int id) {
		return em.find(Pokemon.class, id);
	}

	@Override
	public Pokemon findByName(String name) {
		return em.find(Pokemon.class, name);
	}
	
	@Override
	public List<Pokemon> findAll() {
		List<Pokemon> pkmn = null;
		String query = "SELECT p FROM Pokemon p";
		pkmn = em.createQuery(query, Pokemon.class).getResultList();
		return pkmn;
	}

	@Override
	public Pokemon createPkmn(Pokemon pkmn) {
		em.persist(pkmn);
		em.flush();
		return pkmn;
	}

	@Override
	public Pokemon updatePkmn(int id, Pokemon updatePkmn) {
		Pokemon pkmn = em.find(Pokemon.class, id);
		em.persist(pkmn);
		pkmn.setName(updatePkmn.getName());
		pkmn.setType1(updatePkmn.getType1());
		pkmn.setType2(updatePkmn.getType2());
		pkmn.setHeight(updatePkmn.getHeight());
		pkmn.setWeight(updatePkmn.getWeight());
		pkmn.setAbility(updatePkmn.getAbility());
		pkmn.setEntry(updatePkmn.getEntry());
		pkmn.setImage(updatePkmn.getImage());
		em.flush();
		return pkmn;
	}

	@Override
	public boolean deletePkmn(int id) {
		Pokemon deletePkmn = em.find(Pokemon.class, id);
		System.err.println("*********************" + deletePkmn);
		em.remove(deletePkmn);
		em.flush();
		boolean status = !em.contains(deletePkmn);
		return status;
	}

}
