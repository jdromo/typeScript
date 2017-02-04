using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Gamming.Startup))]
namespace Gamming
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
