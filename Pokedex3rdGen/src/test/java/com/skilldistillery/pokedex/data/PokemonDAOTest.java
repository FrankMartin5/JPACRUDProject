package com.skilldistillery.pokedex.data;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class PokemonDAOTest {
	
	public PokemonDAO dao;

	@BeforeEach
	void setUp() throws Exception {
		dao = new PokemonDAOImpl();
	}

	@AfterEach
	void tearDown() throws Exception {
		dao = null;
	}

	@Disabled
	@DisplayName("Testing find by Pkmn by ID")
	@Test
	void test1() {
		assertEquals(1, dao.findByID(1));
	}

}
