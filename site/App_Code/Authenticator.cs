using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Authenticator
/// </summary>
public class Authenticator {
    private static Authenticator instance;

    public static Authenticator Instance {
        get {
            if (instance == null) {
                instance = new Authenticator();
            }
            return instance;
        }
    }

    private Authenticator() {
        
    }

    /// <summary>
    /// For the hackathon this is what we're doing
    /// </summary>
    /// <param name="username"></param>
    /// <param name="password"></param>
    /// <returns></returns>
    public bool authenticateUser(string username, string password) {
        return ((username == "bob" && password == "rbc") || (username == "larry" && password == "manager"));
    }
}