#include "process-caller.h"
#include "provider-plugin-proxy-singleton.h"

#include <AccountsUI/ProviderPluginProxy>

ProcessCaller::ProcessCaller()
{}

ProcessCaller::~ProcessCaller()
{}

void ProcessCaller::createAccount(Accounts::Provider provider)
{
     AccountsUI::ProviderPluginProxy *pluginProcess = ProviderPluginProxySingleton::instance();
     if (!pluginProcess) {
         return;
     }
     qDebug("plugin exist");
     pluginProcess->createAccount(provider, QString());
}
