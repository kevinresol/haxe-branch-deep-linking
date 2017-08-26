package branch;

import branch.api.*;
import tink.web.proxy.Remote;
import tink.url.Host;

@:forward
abstract Branch(Remote<BranchApi>) {
	public function new(client) {
		this = new Remote<BranchApi>(
			client, 
			new RemoteEndpoint(new Host('api.branch.io', 443))
				.sub({
					path: ['v1']
				})
		);
	}
}