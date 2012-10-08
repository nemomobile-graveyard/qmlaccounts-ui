#ifndef PROCESSCALLER_H
#define PROCESSCALLER_H

#include <QObject>

#include <Accounts/Provider>

class ProcessCaller : public QObject
{
    Q_OBJECT
public:
    ProcessCaller();
    ~ProcessCaller();
    Q_INVOKABLE void createAccount(Accounts::Provider provider);
};

#endif // PROCESSCALLER_H
