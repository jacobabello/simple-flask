from flask import Flask
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

try:
    import flask_config
except ImportError:
    raise ValueError('Config not found!')


class DemoEntity(declarative_base()):
    __tablename__ = "demo"

    id = Column(Integer, primary_key=True)
    firstname = Column(String)
    lastname = Column(String)


app = Flask(__name__)

@app.route('/')
def hello_world():
    try:
        engine = create_engine('mysql://%s:%s@%s/%s' % (flask_config.db_config['username'],
                                                        flask_config.db_config['password'],
                                                        flask_config.db_config['host'],
                                                        flask_config.db_config['database']), echo=False)
        Session = sessionmaker(bind=engine)
        OrmSession = Session()

        demo = OrmSession.query(DemoEntity).first()

    except Exception as e:
        raise ValueError(str(e))

    return 'This is a simple flask Hello World! web app, Succesfully connected to database: Welcome %s, %s' % (demo.firstname, demo.lastname)


if __name__ == '__main__':
    app.run(
        host=flask_config.web_config['host'],
        port=flask_config.web_config['port']
    )
