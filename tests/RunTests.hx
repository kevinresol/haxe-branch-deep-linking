package ;

import branch.*;
import tink.http.clients.*;
import tink.testrunner.*;
import tink.unit.*;
import tink.unit.Assert.*;

class RunTests {

  static function main() {
    
    Runner.run(TestBatch.make([
      new LinkTest(),
    ])).handle(Runner.exit);
    
  }
  
}

class LinkTest {
  var branch = new Branch(new SecureNodeClient());
  var url:String;
  
  public function new() {}
  
  public function create() {
    return branch.url().create({
      branch_key: Sys.getEnv('BRANCH_KEY'),
      data: new DataBuilder().set(FallbackUrl, 'https://www.google.com'),
    }).next(function(o) {
      url = o.url;
      return assert(o.url != null);
    });
  }
  
  public function get() {
    return branch.url().get({
      branch_key: Sys.getEnv('BRANCH_KEY'),
      url: url,
    }).next(function(o) return assert(o != null));
  }
}