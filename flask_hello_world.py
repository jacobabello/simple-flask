from flask import Flask
from flask import render_template
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
import random

try:
    import flask_config
except ImportError:
    raise ValueError('Config not found!')


class DemoEntity(declarative_base()):
    __tablename__ = "demo_ca_states"

    id = Column(Integer, primary_key=True)
    demo_ca_state_abbr = Column(String)
    demo_ca_state_name = Column(String)
    demo_ca_state_capital = Column(String)


app = Flask(__name__)
engine = create_engine('mysql://%s:%s@%s/%s' % (flask_config.db_config['username'],
                                                flask_config.db_config['password'],
                                                flask_config.db_config['host'],
                                                flask_config.db_config['database']), echo=False)


@app.route('/')
def hello_world():
    Session = sessionmaker(bind=engine)
    OrmSession = Session()

    rand = random.randrange(0, OrmSession.query(DemoEntity).count())
    demo = OrmSession.query(DemoEntity)[rand]
    OrmSession.close()

    return render_template('index.html',
                           ca_state_abbr=demo.demo_ca_state_abbr,
                           ca_state_name=demo.demo_ca_state_name,
                           ca_state_capital=demo.demo_ca_state_capital)


if __name__ == '__main__':
    app.run(
        host=flask_config.web_config['host'],
        port=flask_config.web_config['port']
    )
