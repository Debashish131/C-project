using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HomeTry_App.Startup))]
namespace HomeTry_App
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
