#ifndef FILEIO_H
#define FILEIO_H

#include <QObject>
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include <QUrl>

class FileIO : public QObject
{
    Q_OBJECT

        public slots:
        bool write(const QString &source, const QString& data)
        {
            if (source.isEmpty())
                return false;

            QFile file(source);
            if (!file.open(QFile::WriteOnly | QFile::Truncate))
			{
                qCritical() << file.errorString();
                return false;
            }

            QTextStream out(&file);
            out << data;
            file.close();

            return true;
        }

        QString read(const QString &source)
        {
            if (source.isEmpty())
                return "";

            QFile file(source);
            if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
            {
                qCritical() << file.errorString();
                return "";
            }

            return file.readAll();
        }

        bool exists(const QString filename)
        {
            return QFile::exists(filename);
        }

 public:
    FileIO() {}
};

#endif // FILEIO_H
