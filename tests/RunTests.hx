package ;

import branch.*;
import tink.http.clients.*;

class RunTests {

  static function main() {
    
    new Branch(new SecureNodeClient()).url().create({
      branch_key: Sys.getEnv('BRANCH_KEY'),
      data: new DataBuilder().set(FallbackUrl, 'https://www.google.com'),
    })
      .handle(function(o) {
        trace(o);
        travix.Logger.exit(0);
      });
    
  }
  
}