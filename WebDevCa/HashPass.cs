using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace WebDevCa
{
    public class HashPass
    {
        //encrypting password with sha1
        public string PassHash(string data)
        {
            SHA1 sha = SHA1.Create();
            byte[] hashdata = sha.ComputeHash(Encoding.Default.GetBytes(data));
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < hashdata.Length; i++)
            {
                sb.Append(hashdata[i].ToString());
            }

            return sb.ToString();

        }

    }
}