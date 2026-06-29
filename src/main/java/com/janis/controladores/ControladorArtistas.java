package com.janis.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.janis.modelos.Artista;
import com.janis.servicios.ServicioArtistas;

import jakarta.validation.Valid;

@Controller
public class ControladorArtistas {

	@Autowired
	private ServicioArtistas servicio;

	@GetMapping("/artistas")
	public String desplegarArtistas(Model model) {
		model.addAttribute("listaArtistas", servicio.obtenerTodosLosArtistas());
		return "artistas.jsp";
	}

	@GetMapping("/artistas/detalle/{idArtista}")
	public String desplegarDetalleArtista(@PathVariable("idArtista") Long idArtista, Model model) {
		Artista artista = servicio.obtenerArtistaPorId(idArtista);
		model.addAttribute("artista", artista);
		return "detalleArtista.jsp";
	}

	@GetMapping("/artistas/formulario/agregar")
	public String formularioAgregarArtista(@ModelAttribute("artista") Artista artista) {
		return "agregarArtista.jsp";
	}

	@PostMapping("/artistas/procesa/agregar")
	public String procesarAgregarArtista(@Valid @ModelAttribute("artista") Artista artista, BindingResult result) {
		if (result.hasErrors()) {
			return "agregarArtista.jsp";
		}
		servicio.agregarArtista(artista);
		return "redirect:/artistas";
	}
}
