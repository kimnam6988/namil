/*% : ���ڰ� ���ų�, �ϳ� �̻��� ���ڰ� � ���� �͵� �������
 _ : �ϳ��� ���ڰ� ��� ���� �͵� �������*/

/*��� �̸��� '��'�� �����ϴ� ��� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '��%'

/*��� �̸��� '��'�ڰ� ���� ��� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%��%'

/*��� �̸��� '��'�ڷ� ������ ��� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%��'

/*��� �̸��� ����° ���ڰ� '��'�� ��� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '__��%'