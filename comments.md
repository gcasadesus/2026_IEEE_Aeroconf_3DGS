# Reviewer comments

## Reviewer 1

The paper evaluates different methods to perform depth estimation, terrain segmentation, and 3D reconstruction. The authors performed an extensive evaluation using an artificial Lunar dataset based on Unreal Engine 5. The paper is well written, in particular given the many subtopics. 

- As stated by the authors, computational resources on Mars missions are limited and the mention of areas and concrete ideas on how to reduce resource requirements is appreciated. Please mention this limitation/future work in the conclusion, too, as otherwise one could get a wrong impression from Abstract and Conclusion. 

- Dynamic lighting conditions on the Moon were not evaluated. The 3D reconstruction exploits perfectly accurate poses and images without noise, lens flares, or similar. While this is acknowledged by the authors, these are unrealistic assumptions and the value of the results is unclear. For a fairer assessment, noise could be added to the camera poses and, less importantly, consider adding image artifacts/dynamic light. 

- From the reviewer's point of view, the paper could be accepted since the main contribution of the paper is a preliminary evaluation of these methods, with potential extension to be used in a real environment. 

- Please clarify how the segmentation is used for the final map. The individual segmentation shows various classes, but it appears that only the sky class is relevant for the 3D reconstruction. The shown examples of the final map do not (visibly) feature segmentations.

## Reviewer 2

This contribution presents a well-motivated study addressing the challenges of real-time, camera-based lunar surface mapping under harsh illumination and limited computational capability. Integrating 3DGS with dense perception models for online lunar surface mapping is novel and relevant. Although the mapping pipeline relies on ground-truth poses, the research direction is promising. It provides a strong foundation for future extensions toward a complete SLAM system. The evaluation of a wide range of depth estimation and semantic segmentation models on the LuSNAR dataset is comprehensive. The authors employ a wide set of metrics, which provides an objective view. This benchmarking effort is well executed and makes a contribution on its own. The paper is generally well organized and clearly describes the system architecture, methodology, model selection, and mathematical formulations. 

- While the paper offers valuable contributions, the focus could be more clearly defined. The work combines two major efforts, a new mapping framework and a broad benchmarking study of perception models for lunar scenarios, which could be presented as separate contributions. Placing stronger emphasis on the primary contribution would help improve narrative clarity and coherence. 

- The claim of real-time performance is not fully supported. While execution speeds for individual perception components are estimated, the paper does not provide end-to-end runtime measurements of the proposed pipeline. In its current configuration, the system operates in a low-frequency online processing (< 1 Hz) rather than in real-time. 

- On the other hand, the definition of real-time is application-dependent. Therefore, a more precise explanation of the chosen performance criteria would be beneficial. 

- Due to its broad scope, the paper is also dense on first reading. This is particularly reflected in section 4, in which the evaluation results are presented, analyzed, concluded, and further incorporated into future work at once. Splitting the contributions into separate sections or restructuring the results section into distinct results, discussion, and future work components may be clearer. 

- Figure 6 is unclear. The caption does not specify whether the images show depth estimates or error maps, and the lack of a legend makes interpretation difficult. More explicit labeling would improve readability.

## Reviewer 3

This work presents a method for creating dense, semantic 3D maps of the lunar surface by integrating RAFT-Stereo depth estimation, U-Net++ semantic segmentation, and a 3D Gaussian Splatting (3DGS) optimization pipeline. Various components and models are experimented and assessed for feasibility to the challenges of lunar environments, such as poorly textured terrain and high-contrast lighting. The results show impressive geometric accuracy of the reconstruction (via standard 3D metrics like Chamfer distance) and qualitative novel view synthesis. A thorough ablation study examines the impact of different depth and segmentation models, detailing their characteristics. 

- Runtime performance is reported for a terrestrial desktop setup; however, discussing expected performance on current or next generation flight hardware would be valuable, as would an assessment of the feasibility for real time, onboard deployment. 

- While direct comparisons with alternative Gaussian Splatting variants (e.g., 2DGS) are not required, a brief discussion of these alternatives and their anticipated performance would further strengthen the work. Overall, the paper is well formatted and very well written.
