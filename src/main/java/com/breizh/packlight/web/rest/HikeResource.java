package com.breizh.packlight.web.rest;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.breizh.packlight.domain.Hike;
import com.breizh.packlight.domain.ItemHike;
import com.breizh.packlight.domain.User;
import com.breizh.packlight.repository.HikeRepository;
import com.breizh.packlight.repository.UserRepository;
import com.breizh.packlight.security.SecurityUtils;
import com.breizh.packlight.web.rest.dto.HikeDTO;
import com.breizh.packlight.web.rest.dto.ItemDTO;
import com.breizh.packlight.web.rest.dto.ItemHikeDTO;
import com.codahale.metrics.annotation.Timed;

/**
 * REST controller for managing Hike.
 */
@RestController
@RequestMapping("/app")
public class HikeResource {

    private final Logger log = LoggerFactory.getLogger(HikeResource.class);

    @Inject
    private HikeRepository hikeRepository;

    @Inject
    private UserRepository userRepository;

    
    /**
     * POST  /rest/hikes -> Create a new hike.
     */
    @RequestMapping(value = "/rest/hikes",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public void create(@RequestBody HikeDTO hikeDto) {
        log.debug("REST request to save Hike : {}", hikeDto);
        User currentUser = userRepository.findOne(SecurityUtils.getCurrentLogin());
        
        Hike hike = new Hike();
        hike.setDuration(hikeDto.getDuration());
        hike.setLabel(hikeDto.getLabel());
        hike.setStartingTown(hikeDto.getStartingTown());
        hikeRepository.save(hike);
    }

    /**
     * GET  /rest/hikes -> get all the hikes.
     */
    @RequestMapping(value = "/rest/hikes",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public List<HikeDTO> getAll() {
        log.debug("REST request to get all Hikes");
        List<Hike> hikes = hikeRepository.findAll();
        List<HikeDTO> hikesDto = new ArrayList<HikeDTO>();
        for (Hike hike:hikes){
        	hike.getItemHikes().size();
            HikeDTO hikeDto = new HikeDTO();
            hikeDto.setId(hike.getId());
            hikeDto.setLabel(hike.getLabel());
            hikeDto.setBeginDate(hike.getBeginDate());
            hikeDto.setStartingTown(hike.getStartingTown());
            hikeDto.setDuration(hike.getDuration());
            ItemHikeDTO ihDTO;
            for (ItemHike ih:hike.getItemHikes()){
            	ihDTO = new ItemHikeDTO();
            	ItemDTO idto = new ItemDTO();
            	idto.setId(ih.getItem().getId());
            	idto.setLabel(ih.getItem().getLabel());
            	idto.setWeight(ih.getItem().getWeight());
            	idto.setOnMe(ih.isOnMe());
            	idto.setIdHike(hike.getId());
            	idto.setCategoryId(ih.getCategory().getId());
            	ihDTO.setItem(idto);
            	hikeDto.getItemHikes().add(ihDTO);
            }
            hikesDto.add(hikeDto);
        }
        return hikesDto;
    }

    
    
    /**
     * GET  /rest/hikes/:id -> get the "id" hike.
     */
    @RequestMapping(value = "/rest/hikes/{id}",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Hike> get(@PathVariable Long id, HttpServletResponse response) {
        log.debug("REST request to get Hike : {}", id);
        Hike hike = hikeRepository.findOne(id);
        if (hike == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(hike, HttpStatus.OK);
    }

    /**
     * DELETE  /rest/hikes/:id -> delete the "id" hike.
     */
    @RequestMapping(value = "/rest/hikes/{id}",
            method = RequestMethod.DELETE,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public void delete(@PathVariable Long id) {
        log.debug("REST request to delete Hike : {}", id);
        hikeRepository.delete(id);
    }
}
