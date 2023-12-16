using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LearningCURD.Startup))]
namespace LearningCURD
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
