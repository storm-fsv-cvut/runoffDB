[![DOI](https://zenodo.org/badge/610790162.svg)](https://doi.org/10.5281/zenodo.15116311)
# RunoffDB
<p>This database was created to provide an open platform for storing and sharing measured data associated with rainfall-runoff events. Each experimental watershed and rainfall simulator is unique, and so are the procedures for measuring, recording, processing, storing and using the data. Utilizing data from different sources for mutual comparison or for a common purpose can be very challenging because of the different methods for processing and storing data at different workplaces.</p>
<p>The database structure was designed to store data and metadata related to rainfall-runoff experiments and measurements in general but expanding the structure for other kind of collected hydrological research data is one of the future goals.</p>
<p>Separate instances of this DB can be run on individual servers of various institutions storing only the data of the particular institution. While keeping a common structure among those instances should allow for unified access procedures and possible flawless merging of the instances if desired.</p>
<p>Website of the project with more information and running GUI of the Czech Technical University instance of the RunoffDB can be accessed at https://runoffdb.fsv.cvut.cz/en</p>

## Motivation
<p>This project tries to provide a sufficiently robust and internally linked structure for storing measured data together with their metadata, mutual relationships between derived data sets and other information about methods of collection and processing of stored data according to the principles defined in the <a href="https://www.go-fair.org/fair-principles/">"FAIR Guiding Principles for scientific data management and stewardship"</a>.</p>

## Implementation
<p>The database is created as a repository of a data model of entities and their relationships, which was designed to represent experimental campaigns associated with surface runoff, primarily runoff experiments with artificial rainfall carried out using so-called rain simulators. Entities are defined to adequately describe the important methods and properties of the performed experiment along with the results achieved during it. Interlinking entities using relationships serves to eliminate redundancies in stored data and create a structure that can be easily searched, filtered, and programmaticaly processed.</p>
<p>The database is developed in MySQL 10.5 language and includes tables and relationship for the measurements themselves, their metadata, information about research teams, rain simulators, as well as funding sources for individual campaigns.</p>

## Installation
<p>To install the database just use the source code as a query in your MySQL server</p>
<p>Sample data set is provided for examining the data structure. The sample data DO NOT represent a real measured rainfall-runoff experiment and was compiled only for this show-case.</p>

# Graphical User Interface
<p>The database itself is accompanied by PHP based graphical user interface for an intuitive interaction with the DB without MYSQL knowledge.</p>
<p>PHP based GUI has its own repository at https://github.com/storm-fsv-cvut/runoffDB_UI</p>
<p>The GUI provides additional functionalities regarding user and access management to the data, visualisation of the data (beta). User rights are distinguished to hierarchical levels to control appropriate access and editing rights.</p>
<p>Unregistered visitors of the GUI are allowed to view the experimental campains and data records to the level of table and columns metadata but are not allowed to view and export data due to licensing and copyright limitations. Registered users are allowed to view, edit and enter data according to their granted role and have access to exporting the data in a structured XML format, which can be further processed in any programming language (PHP, python, R...)</p>

# Mining framework
<p>Latest addition to the RunoffDB project is a runoffdb_miner. This python-based framework is intended to provide a convenient way to get the data stored in RunoffDB in arbitrary format for complex processing and analyses.</p>
<p>The runoffdb_miner has its own repository at https://github.com/storm-fsv-cvut/runoffdb_miner</p>

# Database structure description
<p>The full database structure currently consists of 38 tables. These tables store propertes of entities in the runoffdb or define allowed values (domaines) for these properties.</p>
The core entities that hold the most information are:
<ul>
  <li><strong>run</strong> - represents a single simulation run or an isolated rainfall event</li>
  <li><strong>soil_sample</strong> - represents a disturbed or undisturbed sample of soil that was collected and analyzed</li>
  <li><strong>measurement</strong> - represents a procedure to collect and record values of a particular natural phenomenon</li>
</ul>
<p>For an organizational purposes one single run is always part of a sequence of simulations (experiments performed <strong>after</strong> each other, though the sequence may contain just a single run). In case of artificial rainfall campaigns the sequence represents a series of experiments that was performed between a rainfall simulator was installed and removed afterwards at a certain spot.</p>
<p>Similarily a single run is always a part of one 'run group' that represents experiments happening <strong>alongside</strong> each other, for the experimental set-ups where more then one bounded plot is being rained-on simultaneusly</p>
<ul>
  <li><strong>sequence</strong> - stores properties of the experimental run sequence</li>
  <li><strong>run_group</strong> - stores properties of the experimental run group</li>
</ul>
<p>Relation tables between the entities above are needed because a single measurement can be related to more simulation runs (e.g. rainfall intensity for simulation runs in one run_group) or more soil samples (e.g. organic carbon content evaluated from a mixed sample).</p>
<ul>
  <li><strong>measurement_run</strong> - relates experimental runs and existing measurements</li>
  <li><strong>measurement_soil_sample</strong> - relates soil samples and existing measurements</li>
</ul>
<p>Measured data (or data derived in any way) are organized into records. Each record belongs to exactly one measurement, each data entry belongs to exactly one record. Records can be related 'many to many' (independently of the measurement they belong to) with a source-target relationship thus keeping track of changes and derivatives (e.g. wrong data point elimination, time interval harmonization, calculating new series from existing ones) is possible. Currently 5 dimensional data points are implemented: time, the value, 3 related values (though I know this approach is not optimal and hopefully will be changed in the future).</p>
<ul>
  <li><strong>record</strong> - stores properties of a record</li>
  <li><strong>record_record</strong> - stores parent-child (source-derivate) relations between records</li>
  <li><strong>data</strong> - stores the data point values</li>
</ul>
<p>Following set of tables exists in the runoffDB to keep track of data 'owners' and research funding sources. Each simulation run sequence can be par of various projects and various organizations can take part in each project.</p>
<ul>
  <li><strong>project</strong> - stores basic information about a research project covering the experimental research</li>
  <li><strong>sequence_project</strong> - stores relations between experimetnal campaigns and projects</li>
  <li><strong>organization</strong> - stores basic information about institutions involved in projects</li>
  <li><strong>project_organization</strong> - stores relations between research projects and institutions</li>
</ul>
<p>Following set of tables provide storage for entities that may be assigned repeatedly for various entities in the DB. The main reason is to keep apart the textual properties (names, descriptions, etc.) and the entity definitions. Though the textual labels may be adjusted or extended to other languages the correct relation between entities remain intact because is based on unique identifiers of the entities.</p>
<p>Number of entries in these tables is expected to grow however theoretical limit exists when all possible values are existing in the DB. Checking existing values is always recomended before entering a new one not to create duplicities that may lead to ambiguity in processing the data.</p>
<ul>
  <li><strong>crop</strong> - stores definitions of agricultural crops (and generaly surface cover types) that are assigned to 'plot' entities</li>
  <li><strong>model</strong> - stores basic information about a mathematical model that can be assigned to 'phenomenon' entity to represent a set of calibration parameters in consistent manner as other derived records and data while making it easily distinguishable within other 'measurement' entities</li>
  <li><strong>operation</strong> - stores properties of agricultural management operations (including application of fertilizers or other chemicals)</li>
  <li><strong>phenomenon</strong> - stores definition of natural phenomena that are being assigned to measurement entities</li>
  <li><strong>protection_measure</strong> - stores properties of protection measures (erosion control measures, surface runoff mitigationmeasures, etc.) that may be assigned to 'plot' entitiess</li>
  <li><strong>unit</strong> - stores definitions of physical dimensions (units) that are being assigned to 'record' entities to define dimension if which the record's data values are stored.</li>
</ul>
<p>Following entities are defined to allow for consistent storing of subjects that represent real world physical or abstract structures related to rainfall-runoff experimental setup and agricultural management practices.</p>
<ul>
  <li><strong>plot</strong> - represents a temporarily isolated patch of land that is subject to an experiment, one plot may be used for one or many experimental campaigns (is id-referenced by 'run' entity), plot properties do not include geo-coordinates and particular position is defined by id-reference to 'locality' entity</li>
  <li><strong>locality</strong> - represents a physical locality where experimental campaigns are being performed</li>
  <li><strong>simulator</strong> - stores basic properties of experimental equipment (machine, set-up) that is being utilized for experimental campaigns (id-referenced by 'sequence' entity)</li>
  <li><strong>agrotechnology</strong> - stores properties of agricultural management practices, basicly only name, description and notes because the detailed properties are consequence of a particular 'tillage_sequence'</li>
  <li><strong>tillage_sequence</strong> - stores definitions of date-related tillage operation set representing a sequence of agro-management operations performed on a particular 'plot', each 'agrotechnology' contains at least one 'operation' in a 'tillage_sequence'</li>
</ul>
<p>Though none of the runoffDB tables is immutable, following tables are the least expected to change as they serve as a domain definitions for some of the properties used in other tables (e.a. entitites). Again the main reason is to keep apart the textual properties (names, descriptions, etc.) and the conceptual meaning of the entry.</p>
<p>Complete set of values in this group of tables may be examined within the sample dataset provided in this repository.</p>
<ul>
  <li><strong>assignment_type</strong> - defines possible character of real-world relation between a sample and it's 'worth' to particular entity to which it has been assigned.</li>
  <li><strong>crop_er_type</strong> - ad-hoc classification of crops regarding their character related to soil erosion susceptibility</li>
  <li><strong>crop_type</strong> - agricultural classification of crops</li>
  <li><strong>operation_intensity</strong> - defines set of tillage operation character regarding the disturbance of top-soil layer</li>
  <li><strong>operation_type</strong> - defines set of tillage operation type regarding the general agro-management actions (soil preparation, seeding, saw, etc.)</li>
  <li><strong>quality_index</strong> - defines levels of assumed quality of a 'record' entity, implemented especially for selecting 'the best' record where more records are existing in the DB and only one is needed for a particular export action, strong effort was put to detailed definition of each quality level, however objectivity of such property may be disscussed</li>
  <li><strong>run_type</strong> - allowed values set for 'run type' property according to (Seibert et al., 2011)</li>
  <li><strong>record_type</strong> - definition of possible types of record regarding its origin, level of processing and relations to other records</li>
  <li><strong>wrb_soil_class</strong> - possible values of the WRB soil classification system - this table is empty so far and the WRB soil class is not assigned anywhere in the DB though the structure is ready for that</li>
</ul>
<p>Last group of tables is related to the runoffDB management and management of the PHP GUI and data-entity model</p>
<ul>
  <li><strong>user</strong> - stores properties of DB users with id-reference to their affiliate organization and their assigned 'role' in the DB management (see below); 'sequence', 'soil_sample' and 'measurement' entities id-reference their creator from the 'user' table</li>
  <li><strong>cms</strong> - table storing the Content Management System of the webpages of the GUI</li>
  <li><strong>migration_versions</strong>, <strong>doctrine_migration_versions</strong> - tables storing data relevant to migration versions of the data-entity model</li>
</ul>

