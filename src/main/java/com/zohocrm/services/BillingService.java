package com.zohocrm.services;

import java.util.List;

import com.zohocrm.entities.Billing;

public interface BillingService {

	public void saveOneBill(Billing billing);

	public List<Billing> listAllBilling();

}
