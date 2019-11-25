package service.impl;

import java.util.List;

import dao.impl.ClientDao;
import data.Client;
import service.UserService;

public class ClientServiceImpl implements UserService<Client>{

	private ClientDao clientDao;
	
	public ClientServiceImpl() {
		super();
		this.clientDao = new ClientDao();
	}

	@Override
	public boolean add(Client client) {
		return clientDao.doInsert(client);
	}

	@Override
	public Client queryById(String id) {
		return clientDao.queryById(id);
	}

	@Override
	public List<Client> queryByName(String name) {
		return clientDao.queryByName(name);
	}

	@Override
	public boolean updateInfo(Client t) {
		return clientDao.doUpdate(t);
	}

}
