// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import java.util.List;
import medizin.server.domain.AssesmentQuestion;
import medizin.server.domain.AssesmentQuestionDataOnDemand;
import medizin.server.domain.AssesmentQuestionIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AssesmentQuestionIntegrationTest_Roo_IntegrationTest {
    
    declare @type: AssesmentQuestionIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: AssesmentQuestionIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: AssesmentQuestionIntegrationTest: @Transactional;
    
    @Autowired
    private AssesmentQuestionDataOnDemand AssesmentQuestionIntegrationTest.dod;
    
    @Test
    public void AssesmentQuestionIntegrationTest.testCountAssesmentQuestions() {
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to initialize correctly", dod.getRandomAssesmentQuestion());
        long count = AssesmentQuestion.countAssesmentQuestions();
        Assert.assertTrue("Counter for 'AssesmentQuestion' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void AssesmentQuestionIntegrationTest.testFindAssesmentQuestion() {
        AssesmentQuestion obj = dod.getRandomAssesmentQuestion();
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to provide an identifier", id);
        obj = AssesmentQuestion.findAssesmentQuestion(id);
        Assert.assertNotNull("Find method for 'AssesmentQuestion' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'AssesmentQuestion' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void AssesmentQuestionIntegrationTest.testFindAllAssesmentQuestions() {
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to initialize correctly", dod.getRandomAssesmentQuestion());
        long count = AssesmentQuestion.countAssesmentQuestions();
        Assert.assertTrue("Too expensive to perform a find all test for 'AssesmentQuestion', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<AssesmentQuestion> result = AssesmentQuestion.findAllAssesmentQuestions();
        Assert.assertNotNull("Find all method for 'AssesmentQuestion' illegally returned null", result);
        Assert.assertTrue("Find all method for 'AssesmentQuestion' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void AssesmentQuestionIntegrationTest.testFindAssesmentQuestionEntries() {
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to initialize correctly", dod.getRandomAssesmentQuestion());
        long count = AssesmentQuestion.countAssesmentQuestions();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<AssesmentQuestion> result = AssesmentQuestion.findAssesmentQuestionEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'AssesmentQuestion' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'AssesmentQuestion' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void AssesmentQuestionIntegrationTest.testFlush() {
        AssesmentQuestion obj = dod.getRandomAssesmentQuestion();
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to provide an identifier", id);
        obj = AssesmentQuestion.findAssesmentQuestion(id);
        Assert.assertNotNull("Find method for 'AssesmentQuestion' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyAssesmentQuestion(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'AssesmentQuestion' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AssesmentQuestionIntegrationTest.testMergeUpdate() {
        AssesmentQuestion obj = dod.getRandomAssesmentQuestion();
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to provide an identifier", id);
        obj = AssesmentQuestion.findAssesmentQuestion(id);
        boolean modified =  dod.modifyAssesmentQuestion(obj);
        Integer currentVersion = obj.getVersion();
        AssesmentQuestion merged = (AssesmentQuestion)obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'AssesmentQuestion' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AssesmentQuestionIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to initialize correctly", dod.getRandomAssesmentQuestion());
        AssesmentQuestion obj = dod.getNewTransientAssesmentQuestion(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'AssesmentQuestion' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'AssesmentQuestion' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void AssesmentQuestionIntegrationTest.testRemove() {
        AssesmentQuestion obj = dod.getRandomAssesmentQuestion();
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'AssesmentQuestion' failed to provide an identifier", id);
        obj = AssesmentQuestion.findAssesmentQuestion(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'AssesmentQuestion' with identifier '" + id + "'", AssesmentQuestion.findAssesmentQuestion(id));
    }
    
}