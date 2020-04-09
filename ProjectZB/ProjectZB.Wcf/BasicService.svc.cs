using ProjectZB.Wcf.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace ProjectZB.Wcf
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "BasicService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select BasicService.svc or BasicService.svc.cs at the Solution Explorer and start debugging.
    public class BasicService : IBasicService
    {
        public void DoWork()
        {
        }

        public string HelloWorld(string name)
        {
            return "Hello " + name;
        }

        public BasicUser GetBasicUser()
        {
            return new BasicUser()
            {
                Username = "Heisenberg",
                Password = "S4yMyN4m3"
            };
        }
    }
}
