using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace ProjectZB.Wcf
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IBasicService" in both code and config file together.
    [ServiceContract]
    public interface IBasicService
    {
        [OperationContract]
        void DoWork();

        [OperationContract]
        string HelloWorld(string name);
    }
}
