package com.zohocrm.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Billing;
import com.zohocrm.repositories.BillingRepository;

@Service
public class BillingServiceImpl implements BillingService {
	
	@Autowired
	private BillingRepository billingRepo;

	@Override
	public void saveOneBill(Billing billing) {
		billingRepo.save(billing);
	}

	@Override
	public List<Billing> listAllBilling() {
		List<Billing> billing = billingRepo.findAll();
		return billing;
	}

	
}
