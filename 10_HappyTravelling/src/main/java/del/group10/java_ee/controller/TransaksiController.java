package del.group10.java_ee.controller;
import del.group10.java_ee.repository.TujuanRepository;
import del.group10.java_ee.repository.AsalRepository;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import del.group10.java_ee.model.Transaksi;
import del.group10.java_ee.service.TransaksiService;
import del.group10.java_ee.model.DaftarTujuan;
import del.group10.java_ee.model.DaftarAsal;

@Controller
public class TransaksiController {

	@Autowired
	private TransaksiService transaksiService;
	@Autowired
	private TujuanRepository tujuanRepository;
	
	@Autowired
	private AsalRepository asalRepository;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("listEmployee", transaksiService.getAllEmployee());
		return "index";
	}
	
	@GetMapping("/create")
	public String add(Model model) {
		List<DaftarAsal> listAsal = asalRepository.findAll();
		System.out.println(listAsal.size());
		List<DaftarTujuan> listRoles = tujuanRepository.findAll();
		System.out.println(listRoles.size());
		Transaksi transaksi = new Transaksi();
		model.addAttribute("employee", transaksi);
		model.addAttribute("roles", listRoles);
		model.addAttribute("asals", listAsal);
		return "create";
	}
	
	
	@PostMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Transaksi transaksi) {
		transaksiService.saveEmployee(transaksi);
		return "redirect:/";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteEmployee(@PathVariable(value="id") Integer id) {
		this.transaksiService.deleteEmployeeById(id);
		return "redirect:/";
	}
	
	@GetMapping("/showFormForUpdate/{id}")
	public String showFormForUpdate(@PathVariable (value="id") int id, Model model) {
		Transaksi transaksi = transaksiService.getEmployeeById(id);
		model.addAttribute("employee", transaksi);
		return "update_employee";
	}
}
