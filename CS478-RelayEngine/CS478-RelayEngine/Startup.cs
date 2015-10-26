using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CS478_RelayEngine.Startup))]
namespace CS478_RelayEngine
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
