package com.breizh.packlight.web.rest;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import javax.inject.Inject;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.transaction.TransactionalTestExecutionListener;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.util.ReflectionTestUtils;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.breizh.packlight.Application;
import com.breizh.packlight.domain.Hike;
import com.breizh.packlight.repository.HikeRepository;

/**
 * Test class for the HikeResource REST controller.
 *
 * @see HikeResource
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebAppConfiguration
@TestExecutionListeners({ DependencyInjectionTestExecutionListener.class,
    DirtiesContextTestExecutionListener.class,
    TransactionalTestExecutionListener.class })
public class HikeResourceTest {
    
    private static final Long DEFAULT_ID = new Long(1L);
    
    @Inject
    private HikeRepository hikeRepository;

    private MockMvc restHikeMockMvc;

    private Hike hike;

    @Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
        HikeResource hikeResource = new HikeResource();
        ReflectionTestUtils.setField(hikeResource, "hikeRepository", hikeRepository);

        this.restHikeMockMvc = MockMvcBuilders.standaloneSetup(hikeResource).build();

        hike = new Hike();
        hike.setId(DEFAULT_ID);

    }

    @Test
    public void testCRUDHike() throws Exception {

        // Create Hike
        restHikeMockMvc.perform(post("/app/rest/hikes")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(hike)))
                .andExpect(status().isOk());

        // Read Hike
        restHikeMockMvc.perform(get("/app/rest/hikes/{id}", DEFAULT_ID))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.id").value(DEFAULT_ID.intValue()));

        // Update Hike

        restHikeMockMvc.perform(post("/app/rest/hikes")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(hike)))
                .andExpect(status().isOk());

        // Read updated Hike
        restHikeMockMvc.perform(get("/app/rest/hikes/{id}", DEFAULT_ID))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.id").value(DEFAULT_ID.intValue()));

        // Delete Hike
        restHikeMockMvc.perform(delete("/app/rest/hikes/{id}", DEFAULT_ID)
                .accept(TestUtil.APPLICATION_JSON_UTF8))
                .andExpect(status().isOk());

        // Read nonexisting Hike
        restHikeMockMvc.perform(get("/app/rest/hikes/{id}", DEFAULT_ID)
                .accept(TestUtil.APPLICATION_JSON_UTF8))
                .andExpect(status().isNotFound());

    }
}
