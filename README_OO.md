
# The object of this README file is to explain the concepts of Object Orientaited Programming
These were the course objectives in weeks 1 and 2

- Polymorphism
This seems to be a fundamental requirement, broadly it means that objects (or instances of) can send the same message to 
different objects and get different results.
This is achieved in the add_entry method. 
An interface method could call add_entry on a Diary object and it would automatically be successful 
as there are no restrictions, however the same call to a SecretDriary object could be unsuccesful 
because the diary is locked.

- Inheritance
Inhertiance is achieved by identifying attributes and behavior that is shared between objects, or more specifically 
subsets and super sets of attributes and behaviour. 
I felt that the Diary class was a parent class of the Secret Diary class as the Secret Diry class had more attributes 
(locks) and more behavioir (locking) so I made my Secret Diary a sub-class of the Diary Class

- Encapsulation
This is the process by which all of the behaviour and attributes are defined within a specific class. 
I felt that locking and unlocking was not the behaviour of a diary but the behaviour of a lock and that a secret diary 
would have a lock, but not 'be' a lock.
This has the benefit in that should locking become more complex, storing dates and times, for example, then the lock 
functionality would be hidden from the Secret Diary.
In addition should this system expand and have other objects that have locks, I can be confident that I ave a fully woking, independantly tested lock class that I can call on.



