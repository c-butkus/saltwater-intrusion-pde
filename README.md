# Introduction 
## What is the main theme? Why is it important? 
Saltwater intrusion is when seawater infiltrates freshwater sources. The main theme of this research paper is finding a model for salt water intrusion while neglecting resistance to flow in the vertical direction via the Dupuit approximation and assuming the mass continuity is also volume continuity through the Boussinesq approximation. 

It is important to track saltwater intrusion of aquifers because groundwater is a critical source of drinking water for many people in the United States. As sea levels rise, freshwater coastal aquifers will be more threatened by saltwater intrusion, putting populations and communities that depend on coastal aquifers at risk of losing their freshwater drinking source. Additionally, coastal agriculture is impacted by saltwater intrusion, where salt deposits interact with soil chemistry and can be harmful to plants (USDA, 2019 & USGS, n.d.) The rate at which aquifers are being affected varies, so having a model to accurately predict salt water intrusion can help determine which areas need more immediate action for prevention and mitigation strategies (Barlow & Reichard, 2010). Understanding the dynamics of saltwater intrusion is a pressing issue with dedicated annual/biannual meetings to share new developments at the Salt Water Intrusion Meeting.
## What observations, models, etc are used by others that are different from what you are doing in the project?
Add a few sentences about the findings of this model (Putti et al., 1995) 
More robust models have been developed, such as the Sea Water Intrusion (SWI2) package for MODFLOW, a model used by the United States Geological Survey (Bakker et al., 2013)
# Equations
## What are the fundamental physical/chemical/etc. processes? 
Saltwater intrusion occurs when seawater comes into contact with freshwater sources, most often through sea level rise and higher tides impacting areas of low elevation and by infiltrating freshwater aquifers (USDA, 2019 & USGS, n.d.) Excess pumping of groundwater in coastal areas can also promote saltwater intrusion into aquifers (USGS, n.d.).
## What is being modeled: the mixing of fresh and saltwater at the interface zone
## Relevant equations and potentially where they come from (i.e. how are they derived) 
## Describe all terms and parameters. 
Terms and parameters are described below:
Insert block of code
## Assumptions
We are assuming that “The resistance to flow in the vertical direction in neglected within an aquifer (the Dupuit approximation)”, the density between freshwater and saltwater is small (2.5%), groundwater flow is essentially horizontal, “the mass balance equation for groundwater flow is replaced by the flow balance equation”, and freshwater and saltwater are intermisciple fluids (meaning “saltwater move through the aquifer by advection only”). (Bakker, 2000)
# Numerical Methods
## Describe the numerical methods used. 
Why did you choose to use these methods 
%Code works as intended
insert block of code
## Results
What simulations did you run with the model? 
Describe the results. 
How do the results compare with any known solutions, or data? 
How do the results change with different methods, time steps, grid spacing, or model parameters?
## Figures
At least 4 figures describing results 
Have all axes labeled 
Variables have units 
Everything is readable 
Colors, lines, contours, etc. are all easy to discern
# Conclusion
%What did the model tell you about the process you were studying?
%How could the model be improved in terms of methods used or processes included? Find a way to include erosion of beaches in the model. Erosion of beaches near freshwater aquifers may increase the speed at which saltwater may intrude into the freshwater aquifers.
 
The model we are using assumes the presence of a sharp interface between freshwater and seawater. More accurate models account for vertical velocities to model the gradient transition zone from saltwater to freshwater. (Putti et al., 1995) 
Other models also differentiate between saltwater intrusion into confined and unconfined aquifers. (Jazar, 2014)
 
# References:
Bakker, Mark. Simple groundwater flow models for seawater intrusion, Proceedings of SWIM16, Wolin Island, Poland (2000): 180-182.
 
Bakker, Mark, Schaars, Frans, Hughes, J.D., Langevin, C.D., and Dausman, A.M., 2013, Documentation of the seawater intrusion (SWI2) package for MODFLOW: U.S. Geological Survey Techniques and Methods, book 6, chap. A46, 47 p., http://pubs.usgs.gov/tm/6a46/.
 
Barlow, P.M., Reichard, E.G. Saltwater intrusion in coastal regions of North America. Hydrogeol J 18, 247–260 (2010). https://doi.org/10.1007/s10040-009-0514-3
 
Mario Putti, Claudio Paniconi, Picard and Newton linearization for the coupled model for saltwater intrusion in aquifers, Advances in Water Resources, 18 (3),, 159-170, (1995). https://doi.org/10.1016/0309-1708(95)00006-5
 
Jazar, M., Monneau, R. (2014). Derivation of seawater intrusion models by fromal asymptotics. SIAM Journal on Applied Mathematics, 74(4), 1152–1173, (2014). http://www.jstor.org/stable/24511104 
 
USDA. (2019). Saltwater Intrusion: A Growing Threat to Coastal Agriculture. (https://www.climatehubs.usda.gov/hubs/northeast/topic/saltwater-intrusion-growing-threat-coastal-agriculture)
 
USGS. (n.d.) Sea Level Rise and the Marshall Islands. (https://www.usgs.gov/mission-areas/water-resources/science/saltwater-intrusion?qt-science_center_objects=0#qt-science_center_objects)
 

