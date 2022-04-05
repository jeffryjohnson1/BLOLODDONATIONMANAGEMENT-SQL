

create table Patient(
    patient_id integer,
    patient_name varchar(20) not null,
    blood_group varchar(4),
    disease varchar(20),
    patient_address varchar(20),
    patient_contact_no varchar(20),
    primary  key (patient_id)
);

create table Donar(
    donar_id integer,
    donar_name varchar(20) not null,
    blood_group varchar(4),
    donar_contact_no varchar(20),
    donar_address varchar(20),
    disease varchar(20),
    primary key (donar_id)
);

create table BloodBank(
    blood_bank_id integer,
    blood_bank_name varchar(20),
    blood_bank_address varchar(20),
    blood_bank_contact_no varchar(20),
    primary key (blood_bank_id)
);

create table Donate(
    donate_id integer,
    donar_id integer,
    date_of_donation date,
    blood_bank_id integer,
    flag integer default 1,
    primary key(donate_id),
    foreign key (donar_id) references Donar(donar_id),
    foreign key (blood_bank_id) references BloodBank(blood_bank_id)
);

-- data insertion of patient 

insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1001,'JEFFRY','A+','N/A','CHENNAI','9876543210');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1002,'DINESH','B+','N/A','VELLOR','96756745213');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1003,'SELVA','A+','N/A','COIMBATORE','9089786721');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1004,'SABARISH','B+','N/A','OOTY','9876543210');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1005,'SAI','A+','N/A','MUMBAI','9087654321');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1006,'JEEVA','A+','N/A','MADURAI','8765401234');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1007,'SNEHA','B+','N/A','SALEM','7775404234');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1008,'DEENA','A+','N/A','OOTY','9087601634');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1009,'SIVA','B+','N/A','SALEM','9876501294');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1010,'VISHNU','A+','N/A','CHENNAI','9876501434');
             

-- data insertion of donar

insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(101,'VIJAY','A+','9999970134','SPAIN');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(102,'AJITH','A+','8888880134','LUCKNOW');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(103,'SIMBHU','B+','7777770134','DELHI');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(104,'DHANUSH','A+','6666660134','BIHAR');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(105,'VISHAL','B+','5555550134','USA');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(106,'YASH','A+','9876540134','AUSTRALIA');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(107,'PUNITHRAJKUMAR','A+','8899770134','PARIS');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(108,'KINGSLEY','B+','8877990134','GOA');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(109,'KARTHI','A+','7788990134','KASHMIR');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address)
            values(110,'SURYA','B+','9988770134','COVAI');
 
            
-- data insertion of blood bank

insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(1,'ABC','CHENNAI','9110009998');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(2,'DEF','CHENNAI','9129876543');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(3,'GHI','CHENNAI','9131234567');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(4,'JKL','CHENNAI','91476543210');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(5,'MNO','CHENNAI','9150987654');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(6,'PQR','CHENNAI','9109098976');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(7,'STU','CHENNAI','9189787657');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(8,'VWX','CHENNAI','9187654328');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(9,'BYZ','CHENNAI','9197890987');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(10,'JJJ','CHENNAI','9206785672');
        
-- data insertion of donation 

insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1001,101,'28/02/2022',1);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1002,104,'27/02/2022',2);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1003,102,'26/02/2022',1);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1004,106,'25/04/2022',2);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1005,105,'24/02/2022',1);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1006,106,'28/02/2022',1);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1007,107,'27/02/2022',2);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1008,108,'26/02/2022',1);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1009,109,'25/02/2022',2);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(1010,110,'24/02/2022',1);
commit;
            
            