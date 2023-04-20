package com.hazelcast.app.common.data.person.patient;

import com.hazelcast.config.EventJournalConfig;
import com.hazelcast.config.MapConfig;
import com.hazelcast.core.HazelcastInstance;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class PatientUtils {
	private static final Logger LOGGER = LogManager.getLogger("PatientUtils");

	private static volatile PatientUtils obj = null;

	private PatientUtils() {
	}

	public static PatientUtils getInstance() {
		try {
			if (obj == null) {
				// To make thread safe
				synchronized (PatientUtils.class) {
					// check again as multiple threads
					// can reach above step
					if (obj == null)
						obj = new PatientUtils();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			LOGGER.info(e.getMessage());
		}
		return obj;
	}

	public synchronized void createPatientMap(HazelcastInstance hazelcastInstanceIn, int capacityIn, String patientMapIn) {
		try {
			EventJournalConfig ejc = new EventJournalConfig().setEnabled(true).setCapacity(capacityIn);
			MapConfig mc = new MapConfig(patientMapIn).setEventJournalConfig(ejc);
			hazelcastInstanceIn.getConfig().addMapConfig(mc);
		} catch (Exception e) {
			e.printStackTrace();
			LOGGER.info(e.getMessage());
		}
	}

}