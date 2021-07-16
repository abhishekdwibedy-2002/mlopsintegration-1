FROM centos

RUN yum install python36 -y

RUN pip3 install joblib

RUN pip3 install scikit-learn

COPY salarypredictor_model.pk1 /

COPY salarypredictprog.py /

CMD python3 salarypredictprog.py