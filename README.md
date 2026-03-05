# Percieved Similarity and Listener Behavior
This was a final project from my "Algorithms for Machine Learning" class.  
Originally completed 12/16/2025.

## Research Goal
The research goal of the project was to determine how a percieved similarity between listeners and their favorite artists may influence listeners' behavior.  
### Hyotheses
_H1._ Populations with a higher sense of perceived similarity to an artist leads to greater willingness to support the artist.  
_H2._ Populations with a higher sense of perceived similarity to an artist leads to increased listening of the artist.  
_H3._ Populations with a higher sense of perceived similarity to an artist leads to an increase in spending related to the artist.  _(Untested)_

### Research Outline
#### Collection  
Survey data on markers of percieved similarity and measurable listener behavior, such as music streaming frequency and artist-related spending was collected.  
#### Factor Analysis  
A factor analysis was used to combine these markers of percieved similarity into a score representing a single latent variable.  
#### Testing  
Two separate ANOVAs were used to compare the listening and spending patterns of listeners who percieve a high level of similarity vs. those with a low level of percieved similarity.

## Files Overview
**Copy_of_Musical_Bingus.ipnyb -**  Includes the full code used to conduct the analysis. It repeats the latent factor analysis conducted in latent_facotrs.R so the entire code was in a single submittable file of Python code as requested for the class. It contains some statistical tests that were deemed poor tests that we forgot to remove, including a MANOVA.  
<br>
**Music-Listening.pdf -** The final research paper explaining the experiment including the hypotheses tested, experimental design, data collection and analysis, and the results of the experiment.  
<br>
**Similarity Drive fan sup.pptx -**  A powerpoint used to present our findings to our class. It outlines the main points in Music-Listening.pdf.  
<br>
**calcdata.csv -**  The data used for the analysis. It is a collection of survey responses primarily from other students in the class. Survey questions were modeled after prior research on parasocial relationships by Lee and Watkins as noted in Music-Listening.pdf.  
<br>
**data-analysis.bib -** A bibliography file referencing all of the works cited in the experiement.  
<br>
**latent_factors.R -**  Latent factor analysis conducted to determine a score to measure how similar listeners believe themselves to be to the artists they listen to.  
<br>

## Further Research
This research was conducted with a very limited dataset. It would be valuable to conduct a larger amount of data across a larger audience to see if the findings of this research still hold true. Future recreations of this research may find value testing if percieved similarity has an effect on listener retention. This research will be especially value in combination with research identifying what actionable behaviors artists can take to signal similarity to their audiences.
